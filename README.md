# EAGLE, multi-country extension

Extension of the ECB's EAGLE model to **11 individual euro-area countries** plus
the US and the rest of the world, used to evaluate NGEU. The main output is the
working paper in `docs/2025-02_working-paper/draftPaper.tex`.

This README describes the project *as it is*. The "Known issues" section at the
end is the running list of what still needs fixing; trim it as items get done.
Session-level notes for the paper itself live in
`docs/2025-02_working-paper/.eagle.md`.

---

## Requirements

| Tool | Version in use | Where it is configured |
|---|---|---|
| MATLAB | R2024b | |
| Dynare | 6.1 (arm64) | `iniProject.m`; several older scripts still ask for 6.0, see Known issues |
| IRIS toolbox | `iris_live` checkout | `subroutines/+utils/+call/paths.m` |
| matlabUtils | separate repo, `2025-03_matlabUtils` | `paths.m` |
| Python 3 | pandas, numpy, plotly | called from MATLAB via `pyrunfile`, or run directly |
| LaTeX | latexmk, `ecta` style | bibliography in `docs/2025-02_working-paper/references.bib` |
| Git LFS | 3.x | `.mat`, `.pdf`, `.png`, `.xls*` and `data/raw_data/io/*.csv` are LFS-tracked |

`paths.m` is gitignored and machine-specific. It must define `project_path`,
`iris_path`, `matlabUtils_path` and the `dynare_*_official` variables.

---

## Layout

| Path | What it holds |
|---|---|
| `iniProject.m` | Session setup: paths, IRIS, Dynare. Run first. |
| `eagleParsingTemp/` | The model. `submodules/*.mod` are the equation blocks, `modFiles/*.mod` the runnable mod files (steady-state chain and every shock). Dynare output folders `modFiles/+*/` and `modFiles/*/` are gitignored. |
| `driversMatlab/` | Stage drivers for the paper pipeline (steady state, shocks, tables, NGEU inputs). |
| `driversPython/` | Plotly chart scripts writing into the paper's `figures/`. `wp_charts.py` and `chartTable.csv` size every chart for the page (render and display size in cm, Palatino at 7 to 8 pt). |
| `subroutines/` | MATLAB packages: `+functions` (simulation, IRFs), `+plotting` (`+WP` for paper figures), `+utils` (parsing, table helpers, `+call/paths.m`). |
| `+environment/` | `setup.m` plus the dictionaries it loads: `shockDict.csv` (27 shocks and captions), `varDict.csv`, `varDataDict.csv`, `Meta.json`. |
| `data/` | Calibration inputs as CSV, produced from `data/raw_data/` by the Python code in `data/Codes/`. See `data/data_guide.md`. |
| `databases/` | NGEU shock inputs and chart tables. `ngeuInputs/` holds the two ECB-MC input files (copied 2026-09-07, origin in its README). |
| `docs/` | The working paper (`2025-02_working-paper`), two workshop slide decks, the IMF extended abstract. |
| `aMyNotes/` | Model notes and diagrams (Markdown, Mermaid). |
| `investigations/` | One-off analyses referenced from the paper. |
| `bashScripts/` | Small helpers for editing mod files in bulk. |
| `aDeprecatedFunctions/` | Old code kept for reference. Not on the pipeline. |
| `run*.m` at the root | Older, mostly legacy scripts. See Known issues. |

Country codes in the model: `EAA`=RA (rest of EA), `EAB`=AT, `EAC`=BE,
`EAD`=FI, `EAE`=FR, `EAG`=NL, `EAH`=ES, `EAI`=GR, `EAJ`=IE, `EAK`=IT, `EAL`=PT,
`EAM`=DE, plus `US` and `RW`.

---

## Pipeline

`driversMatlab/runPipeline.m` runs the whole chain or any subset of stages,
in order, after `iniProject`:

```matlab
iniProject
runPipeline("all", true)                                   % everything, ~6.5 h
runPipeline("shocks", true, "tables", true, "paper", true)  % a subset
runPipeline("shocks", true, "shockList", ["shock_ngeu", "shock_eab_gy4"])
```

Stage switches are `calibdata`, `calibmod`, `steady`, `shocks`, `ngeu`,
`tables`, `charts`, `paper`. Shocks run one `matlab -batch` process each by
default (`"separateProcesses", false` to stay in-session). Every stage logs
its run time (see Timing log). The stages themselves are the scripts below,
which can still be run by hand from the project root, in this order. Every
stage after the first reads the output of the previous ones from
`eagleParsingTemp/modFiles/<model>/Output/`.

Run times below were measured on 2026-09-06 on a 16 GB M1 MacBook Pro with
MATLAB R2024b and Dynare 6.1. Each `matlab -batch` call adds roughly 40 s of
start-up on top of the figures given. On the 16 GB M4 Mac mini
(`kk-m4-16gb`, 2026-09-07) the full `runPipeline("all")` took about 2.6 h:
steady-state chain 30 min, 27 shocks 1.9 h (2.8 to 6.6 min each), every other
stage under 2 min.

1. **Environment**: `iniProject`.
2. **Parse the model**: `eagleParsingTemp/runModelParsing.m` runs Dynare on
   `eagleModel.mod` and writes the macro-expanded `eagleModel_macroexp.mod`.
   Currently broken from a clean session, see Known issues. The steady-state
   driver below performs the same parsing step itself, so this script is not
   needed in practice.
3. **Steady state**: `driversMatlab/calculateSteadyState.m` walks the homotopy
   chain `steady0 → 1a → 1b → 2 → 3 → 4 → 6 → steady7`.
   **`steady7` is the calibrated terminal steady state** that every table and
   shock reads from `modFiles/steady7/Output/steady7_results.mat`.
   To iterate on the steady state without reloading the model use
   `eagleParsingTemp/runHomothopyValuesModify.m`.
   *Run time: about 40 min for the whole chain.* The driver also performs the
   model-parsing step (stage 2) on the way, so stage 2 need not be run
   separately. Any change to the calibration mod files (stage 8) invalidates
   everything from here down.
4. **Shocks**:
   - `driversMatlab/runAllSimul.m` loops `functions.runEAGLEsimul` over rows
     6 to 16 of `shockDict.csv` (the 11 single-country consumption shocks).
   - The headline shocks each have a driver with a hardcoded model name:
     `runNGEUshock.m`, `runEaWideFiscalShock.m`, `runEAsingleCountryShock.m`,
     `runEAexternalShock.m`. Each one runs Dynare, computes IRFs and
     contributions, writes the CSV, and calls the Python plot.
   - *Run time: about 12.5 min per shock, so about 5.5 h for all 27.*
     Running all 27 inside one MATLAB session runs out of memory on a 16 GB
     machine after five or six shocks. Run one `matlab -batch` process per
     shock instead.
5. **NGEU inputs**: `driversMatlab/processNGEUdata.m` reads
   `databases/ngeuInputs/` (copied from the ECB-MC project, see the README
   there) and writes the chart tables in `databases/`. Needs `envi = environment.setup` in the workspace first.
   *Run time: about 5 min.*
6. **Tables**: `driversMatlab/runLatexCalibTables.m` and
   `runLatexSimulTables.m` write straight into
   `docs/2025-02_working-paper/tables/`. Other tables are generated by the
   `.m` file of the same name inside `tables/`. The generated files hold only
   the `tabular`; caption, label and font size sit in the paper next to each
   `\input`.
   *Run time: calibration tables about 2 min; multiplier table about 8 min,
   most of it loading the 27 result files.*
7. **Charts**: `runChartsForWP.m` (MATLAB, `plotting.WP.*`) and
   `driversPython/{plotIRFs,plotCalibCharts,plotTradeFlows,plotNGEUbubbleChart}.py`
   write into `docs/2025-02_working-paper/figures/`. Every figure is produced
   at its paper size and included with a bare `\includegraphics`: plotly
   charts through `wp_charts.py`, MATLAB charts through
   `plotting.WP.exportVector` (a vector PDF plus a PNG; headless
   `exportgraphics` shrinks figures, so it prints with the paper size set).
   The IRF panels, decompositions and the NGEU spillover panels
   (`plotting.WP.ngeuSpillovers`) are produced by the shocks stage;
   `functions.runEAGLEsimul(name, "skipSimulation", true)` redraws them from
   the saved results in about 10 s. The OECD input-output schematic is TikZ
   (`figures/OECD_table.tex`).
   *Run time: Python charts about 2 min for all 30 runs; MATLAB charts about
   3 min (M1); seconds on the Mac mini.*
8. **Calibration mod files** (rarely rerun):
   `driversMatlab/extractSSsharesFromCSV.m` reads `data/_calibDataCalculated.csv`
   and writes the trade matrix (`trade_matrix_values_calibrated_new.mod`) and
   the `shares_*`, `tax_rates_*`, `debt_bytarget` and `transfers_trybar` mod
   files that the steady-state chain includes. The older
   `runTradeMatrixFromIOproject.m` and `runTradeMatrixFromXls.m` (now in
   `aDeprecatedFunctions/`) are a superseded route and give materially
   different numbers (up to 0.036 on single shares). *Run time: about 1 min.*
9. **Calibration data** (rarely rerun): the Python code in `data/Codes/`
   turns `data/raw_data/` into the CSVs in `data/`, in the order
   `data_retrieval.py`, `main.py`, `calculateCalibData.py`,
   `collectCalibData.py`, optionally `importsGDPgraph.py`. See
   `data/data_guide.md`. *Run time: about 5 min in total.*

## Build the paper

```
bashScripts/buildPaper.sh
```

which runs `latexmk -pdf -cd docs/2025-02_working-paper/draftPaper.tex` and
logs the run time. Run time: about 1 min.

## Timing log

Every stage appends one line to `timings/timings.csv` (committed):

```
timestamp,machine,stage,item,seconds,status,commit,note
```

- `machine` is the label set as `machine_label` in `paths.m` (host name if
  unset; the `EAGLE_MACHINE` environment variable for Python and shell).
  Describe each label once in `timings/machines.csv`.
- `item` is the shock, steady-state step, or script name; `commit` is the
  code that produced the run; `status` is `ok` or `failed`.
- MATLAB: `utils.logTiming(stage, item, tStart)` with `tStart = tic`.
  Python: `from timinglog import timed` and `with timed(stage, item): ...`.
  Shell: see `bashScripts/buildPaper.sh`.
- Wired in: `functions.runEAGLEsimul` (one row per shock),
  `calculateSteadyState.m` (one row per Dynare step plus `chain`), the table,
  chart and NGEU drivers, `extractSSsharesFromCSV.m`, and the four Python
  chart scripts when run directly.
- Compare machines with `python3 driversPython/summariseTimings.py --minutes`
  (add `--all` to include failed runs).

The 2026-09-06 rows are the baseline for `kk-m1-16gb`; the ones marked
`approx` were reconstructed from session logs rather than measured by the
helper. The 2026-09-07 rows are a complete run on `kk-m4-16gb`.

The bibliography is `references.bib` next to the paper: the cited entries,
extracted from the shared literature bib on 2026-09-07. Add new entries there.

---

## What is left

Goal: a polished, citable draft of `docs/2025-02_working-paper/draftPaper.tex`
(57 pages, dated November 2025, banner "Preliminary Draft"). Checked against
the 2026-09-07 build; details and line numbers in
`docs/2025-02_working-paper/.eagle.md`.

**Blocking before circulation**
- 4 inline `TODO`s: data source (l.216), EA shares to be checked by Emile
  (l.251), GDP-shares chart (l.252), biases and elasticities versus Clancy and
  the original EAGLE (l.1114).

**Paper to-do, one by one** (numbers refer to the review below; tick
when done)
- [ ] R1 Finish Section 3: write 3.1 and 3.2, move the fiscal text to 3.3,
      add the consumption-shock figures, justify the IRF country selection.
- [ ] R2 Document the NGEU exercise: inputs and source, grants/loans,
      financing, anticipation, monetary policy assumption.
- [ ] R3 Reconcile every number in the text with the tables; define the
      multiplier and relabel the multiplier table.
- [ ] R4 Add a sensitivity appendix (trade elasticities, $\alpha_G$,
      non-Ricardian share, debt-rule speed, export pricing); wire in or
      delete the five unused `sensitivityShocks_*`/`shocksTable` tables.
- [ ] R5 Report the spillover numbers and confront them with Pfeiffer et
      al. (2021).
- [ ] R6 Introduction: contribution statement, related literature, roadmap;
      one country count throughout.
- [ ] R7 Justify the law-of-one-price export pricing and its implications.
- [ ] R8 One calibration window; vintage of the IMF investment dataset.
- [ ] Redo the first chart (Figure 1, import magnitude across countries).
- [ ] Compare the fiscal multipliers against the Macroeconomic Model Data
      Base (Wieland et al.).
- [ ] Improve the input-output table content in the paper (Figure 4 and the
      trade-calibration paragraph).
- [ ] Trade-matrix calibration caveat named in the Conclusions; open
      questions in `aMyNotes/Trade_questions.md`.
- [ ] Minor review points R9 to R12, then the final pass: bump `\date`, drop
      the preliminary banner, proofread.

**Pipeline and repository** (see Known issues for details)
- Pin the Dynare version and retire the legacy scripts that fail on
  `dynare_6_0`.
- Make `data_retrieval.py` reproducible to the last digit.

---

## Review of the draft (2026-09-07)

Referee-style reading of the 57-page build. The model extension (14 regions,
ICIO-based trade calibration, homotopy solution with model flipping) is a
solid technical contribution. The draft is not yet a paper: the results
sections are unfinished, the NGEU exercise is under-documented, several
quantitative claims do not match the tables, and there is no sensitivity
analysis. Points in rough order of importance.

**Major**
1. **Section 3 is unfinished.** Subsections 3.1 (monetary policy shock) and
   3.2 (external shock) contain figures and no text. The fiscal-shock text
   ("With the model extension completed ...") sits under 3.1 but describes
   3.3. Subsection 3.3 shows only the investment shock although the text
   discusses consumption too (the `shock_eab_gy4` figures exist). Say why
   the IRF panels show DE, FI, IT, RU and US and not the other countries.
2. **NGEU exercise under-specified.** State what is simulated: grants only
   or loans too, the yearly absorption profile by country, why only
   government investment, and the source behind "data collected within the
   ESCB". State the financing assumption (EU debt, no national debt) and
   how the multi-year announced path enters a fiscal rule with i.i.d.
   shocks (anticipation). State the monetary policy assumption for 2021 to
   2026 (Taylor rule versus effective lower bound); the reported tightening
   drives the German result.
3. **Claims versus tables.** Government consumption: "GDP rises by 1.5
   percent, multiplier well above unity" versus the multiplier table (EA
   1.3 in year 1, negative afterwards, 1.0 cumulative). Government
   investment: "minor but persistent long-term gains" versus 4.9 cumulative
   over ten years. Define the multiplier; the table reports percent
   deviations and a sum of annual deviations, not multipliers. Greece debt
   "180 percent" versus 136.5 in the table; non-euro area EU "about 50"
   versus 44.4.
4. **No sensitivity analysis.** Appendix C holds one table. Show
   sensitivity to the trade elasticities, the public-capital elasticity
   $\alpha_G$, the share of non-Ricardian households, the debt-rule speed,
   and the law-of-one-price export pricing assumption, which bears directly
   on spillovers. Five generated sensitivity tables sit unused.
5. **Spillovers versus the literature.** Report the numbers (peak effect on
   German GDP and exports) and confront them with Pfeiffer et al. (2021),
   who find larger spillovers, explaining why final-demand import content
   from ICIO tables gives smaller effects than intermediate-goods trade.
6. **Positioning.** The introduction has no contribution statement, no
   related literature beyond EAGLE (GIMF, QUEST, other multi-country
   fiscal-spillover models) and no roadmap. Abstract and introduction say
   10 countries, the conclusions 11 (10 plus a residual region); title,
   abstract and conclusions must agree.
7. **Law of one price for exports.** Justify the simplification relative
   to the original EAGLE and state what it does to terms-of-trade and
   spillover effects.
8. **Calibration sample.** Text says 1980 to 2019, figure notes 1995 to
   2019, ICIO averages 1995 to 2020 (including the pandemic year). Use one
   window or explain. Give the vintage of the archived IMF investment
   dataset used for the public/private investment split.

**Minor**
9. Appendix front matter: an empty `\LARGE` block, a second "Content"
   table and a bare "Appendix" heading; the data-sources table is in
   `\tiny`.
10. Figures often precede the text that introduces them (bubble chart,
    NGEU input); the bubble chart and the NGEU input figure show the same
    data twice.
11. Explain "model flipping" once formally (the 755-parameter step) and
    drop the duplicated Bussière paragraph in the trade calibration.
12. Typos and wording: "import reach", "consoumption", "utilize utilize",
    "using using", "bussiere", "The short-coming", "proxy estimate",
    "these involving", "the figure \ref", "Source: OECD" without a table
    reference. A bare `%` in the conclusions cut a sentence in the PDF
    (fixed 2026-09-07).

---

## Known issues

Two lists: what is still outstanding, and what was fixed (kept for the
record, with the date). Move an entry down when it is done.

### Outstanding

**Pipeline**
- `data/Codes/data_retrieval.py` is not reproducible to the last digit:
  re-running it on unchanged inputs moves the aggregate (RA, RU, RW) and DE
  tax rates in the fourth decimal, which then propagates to the calibration
  mod files. Probably a pandas aggregation difference; pin the behaviour.
- `matlab -batch` segfaults on exit after `calculateSteadyState.m` (crash dump
  in the home folder) once all outputs are written. Harmless, but check the
  output timestamps rather than the exit code.
- Dynare version is not pinned: `iniProject` uses 6.1, the parsing scripts want
  6.0, and 6.2 and two 7.x snapshots are installed.
- Every shock driver hardcodes its model name and `cd`s into `modFiles`
  without returning.

**Legacy scripts** (not on the pipeline; decide whether to fix or delete)
- Two incompatible preambles. Root and `driversMatlab` scripts use
  `utils.call.paths` and `environment.setup`; the older scripts in
  `eagleParsingTemp` call `restoredefaultpath` and add Dynare themselves,
  wiping what `iniProject` set up.
- `runModelParsing.m`, `runFiscalShocksGermany.m` and
  `runPlotsCompareOriginalBig1.m` add `dynare_6_0`, a variable that no longer
  exists in `paths.m` (it is `dynare_6_0_official`). They fail on that line.
  `runModelParsing.m` also uses two undefined `options_ecb` fields, and its
  job is done by `calculateSteadyState.m` anyway.
- `runAllSimul.m` covers only rows 6 to 16 of the shock dictionary; use
  `runPipeline("shocks", true)`, which runs all 27 in one process each
  (looping them in one MATLAB session runs out of memory on 16 GB after
  five shocks).
- The root-level `runPlots.m`, `runPlotsmonetary.m`,
  `runPlotsCompareOriginalBig1.m` and `runShareVisualisation.m` compare legacy
  vintages (`Dynare_4-4-3`, `eagleParsingTemp_sim_BIG1`) that are no longer
  in the tree.

**Paper**
- Content items only; see "What is left". The build is clean and the
  formatting follows the spending-model paper.

**Things to keep in mind** (not bugs)
- `runPipeline.m` covers the working-paper chain only; the legacy scripts
  at the root are not part of it.
- Keep every pipeline input off iCloud. "Optimize Mac Storage" evicts files
  mid-run, and MATLAB then reports a function as "a script" or a MAT-file as
  "not binary". A shell-launched MATLAB also hangs until the macOS "access
  Documents folder" dialog is answered.
- Stray `.log` files at the root and in `eagleParsingTemp` are gitignored
  Dynare output and can be deleted at any time.

### Resolved

- **2026-09-07** Downstream results predating the steady state: the whole
  pipeline was rerun on the Mac mini, so shocks, tables and paper match the
  current steady state.
- **2026-09-07** iCloud dependencies: IRIS and matlabUtils copied to
  `~/Developer` (`paths.m` points there), the literature folder moved there,
  the NGEU inputs copied into `databases/ngeuInputs/`.
- **2026-09-07** `plotIRFs.py` crashed under MATLAB's `pyrunfile`
  (`__file__` undefined), a regression from the timing-log commit.
- **2026-09-07** Paper: 11 undefined cross-references, 2 undefined citations,
  5 empty source notes, the Spain/Italy figure mismatch; bibliography made
  local (`references.bib`); formatting aligned with the spending-model
  paper in 13 steps (preamble, headings, notes, title page, figures at paper
  size, vector figures, captions, tables, numbering, citations, prose).
- **2026-09-07** `processNGEUdata.m` sets up its own environment, so it runs
  standalone; the superseded `runTradeMatrixFrom*.m` scripts moved to
  `aDeprecatedFunctions/`.
- **2026-09-06** Single-country investment IRFs that predated the 12-quarter
  horizon were regenerated.
- **2026-09-06** Six leftover iCloud `" 2"` duplicate files swept.
- **2026-09-06** Repository: history rewritten with `git filter-repo` to drop
  1,190 stale LFS pointers (LFS payload in history 8.05 GB to 0.86 GB; 34
  commits that only updated those files disappeared); the 33 OECD
  input-output tables moved into LFS across history with
  `git lfs migrate import`; remote now `origin` =
  `https://github.com/kbankowski-econ/2024-01_eagle` (private), dead GitLab
  remotes removed. Backups in `~/Developer/_backups/` (pre-filter-repo and
  pre-lfs-migrate bundles, old remote URLs). `.git/lfs` holds 2.3 GB on the
  Mac mini.
