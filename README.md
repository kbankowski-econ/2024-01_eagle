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
| LaTeX | latexmk, `ecta` style | bibliography path is machine-local, see Build |
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
| `driversPython/` | Plotly chart scripts writing into the paper's `figures/`. |
| `subroutines/` | MATLAB packages: `+functions` (simulation, IRFs), `+plotting` (`+WP` for paper figures), `+utils` (parsing, table helpers, `+call/paths.m`). |
| `+environment/` | `setup.m` plus the dictionaries it loads: `shockDict.csv` (27 shocks and captions), `varDict.csv`, `varDataDict.csv`, `Meta.json`. |
| `data/` | Calibration inputs as CSV, produced from `data/raw_data/` by the Python code in `data/Codes/`. See `data/data_guide.md`. |
| `databases/` | NGEU shock inputs and chart tables. |
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

There is no single meta driver yet. Each stage is a script you run by hand,
from the project root, in this order. Every stage after the first reads the
output of the previous ones from `eagleParsingTemp/modFiles/<model>/Output/`.

Run times below were measured on 2026-09-06 on a 16 GB Apple-silicon Mac with
MATLAB R2024b and Dynare 6.1. Each `matlab -batch` call adds roughly 40 s of
start-up on top of the figures given.

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
5. **NGEU inputs**: `driversMatlab/processNGEUdata.m` writes the chart tables
   in `databases/`. Needs `envi = environment.setup` in the workspace first.
   *Run time: about 5 min.*
6. **Tables**: `driversMatlab/runLatexCalibTables.m` and
   `runLatexSimulTables.m` write straight into
   `docs/2025-02_working-paper/tables/`. Other tables are generated by the
   `.m` file of the same name inside `tables/`.
   *Run time: calibration tables about 2 min; multiplier table about 8 min,
   most of it loading the 27 result files.*
7. **Charts**: `runChartsForWP.m` (MATLAB, `plotting.WP.*`) and
   `driversPython/{plotIRFs,plotCalibCharts,plotTradeFlows,plotNGEUbubbleChart}.py`
   write into `docs/2025-02_working-paper/figures/`.
   *Run time: Python charts about 2 min for all 30 runs; MATLAB charts about
   3 min.*
8. **Calibration mod files** (rarely rerun):
   `driversMatlab/extractSSsharesFromCSV.m` reads `data/_calibDataCalculated.csv`
   and writes the trade matrix (`trade_matrix_values_calibrated_new.mod`) and
   the `shares_*`, `tax_rates_*`, `debt_bytarget` and `transfers_trybar` mod
   files that the steady-state chain includes. The older
   `runTradeMatrixFromIOproject.m` and `runTradeMatrixFromXls.m` at the root
   are a superseded route and give different numbers. *Run time: about 1 min.*
9. **Calibration data** (rarely rerun): the Python code in `data/Codes/`
   turns `data/raw_data/` into the CSVs in `data/`, in the order
   `data_retrieval.py`, `main.py`, `calculateCalibData.py`,
   `collectCalibData.py`, optionally `importsGDPgraph.py`. See
   `data/data_guide.md`. *Run time: about 5 min in total.*

## Build the paper

```
latexmk -pdf -cd docs/2025-02_working-paper/draftPaper.tex
```

Run time: about 1 min.

The bibliography is external. `draftPaper_localBibliographyPath.tex`
(gitignored) sets `\bibliopath` to the shared literature folder on this
machine.

---

## Known issues

Running list. Remove entries as they are fixed.

**Pipeline**
- No meta driver. A `driversMatlab/runPipeline.m` with one switch per stage is
  the plan.
- **Downstream results predate the current steady state.** On 2026-09-06 the
  whole pipeline was re-run in reverse order. The steady-state chain, run last,
  used the tax-rate mod files regenerated from the 2025-10-24 calibration CSV
  (four values moved by 0.0001) and moved the steady state by up to 0.63 %
  (RW and DE transfer ratios). The 27 shock results, the tables and the paper
  were produced with the previous steady state. Either re-run stages 4 to 7
  (about 6 h) or restore the 2025-10-08 tax-rate mod files.
- `data/Codes/data_retrieval.py` is not reproducible to the last digit:
  re-running it on unchanged inputs moves the aggregate (RA, RU, RW) and DE
  tax rates in the fourth decimal, which then propagates to the calibration
  mod files. Probably a pandas aggregation difference; pin the behaviour.
- `driversMatlab/processNGEUdata.m` uses `envi` on line 2 without calling
  `environment.setup`, so it only runs if `envi` already exists in the
  workspace.
- `runTradeMatrixFromIOproject.m` and `runTradeMatrixFromXls.m` are the old
  calibration route and give a materially different trade matrix (up to 0.036
  on single shares) from `extractSSsharesFromCSV.m`, which is what the model
  uses. Move them to `aDeprecatedFunctions/`.
- The single-country government-investment IRF CSVs and charts committed in
  October 2025 predated the extension of the shock horizon to 12 quarters;
  they were regenerated on 2026-09-06.
- `matlab -batch` segfaults on exit after `calculateSteadyState.m` (crash dump
  in the home folder) once all outputs are written. Harmless, but check the
  output timestamps rather than the exit code.
- Two incompatible preambles. Root and `driversMatlab` scripts use
  `utils.call.paths` and `environment.setup`; the older scripts in
  `eagleParsingTemp` call `restoredefaultpath` and add Dynare themselves,
  wiping what `iniProject` set up.
- `runModelParsing.m`, `runFiscalShocksGermany.m` and
  `runPlotsCompareOriginalBig1.m` add `dynare_6_0`, a variable that no longer
  exists in `paths.m` (it is `dynare_6_0_official`). They fail on that line.
  `runModelParsing.m` also uses two undefined `options_ecb` fields, and its
  job is done by `calculateSteadyState.m` anyway.
- Dynare version is not pinned: `iniProject` uses 6.1, the parsing scripts want
  6.0, and 6.2 and two 7.x snapshots are installed.
- Every shock driver hardcodes its model name and `cd`s into `modFiles`
  without returning.
- `runAllSimul.m` covers only rows 6 to 16 of the shock dictionary. The
  investment shocks (rows 17 to 27) and the headline shocks are run by hand.
  Looping `functions.runEAGLEsimul` over all 27 rows in one MATLAB session
  runs out of memory on 16 GB after five shocks; use one process per shock.
- The root-level `runPlots.m`, `runPlotsmonetary.m`,
  `runPlotsCompareOriginalBig1.m` and `runShareVisualisation.m` compare legacy
  vintages (`Dynare_4-4-3`, `eagleParsingTemp_sim_BIG1`) that are no longer
  in the tree. Decide whether to keep or delete.

**Repository**
- History was rewritten on 2026-09-06 with `git filter-repo` to drop 1,190
  stale LFS pointers (old versions of the Dynare result files under
  `eagleParsingTemp`), taking the LFS payload referenced by history from
  8.05 GB to 0.86 GB. Commit hashes changed and 34 commits that only updated
  those files disappeared. The pre-rewrite history is in
  `~/Developer/_backups/2024-01_eagle_pre-filter-repo_2026-09-06.bundle`.
  The old LFS objects are still in `.git/lfs` (about 10 GB) until
  `git lfs prune` is run after a successful push.
- Later the same day the 33 OECD input-output tables in `data/raw_data/io/`
  (50 to 66 MiB each) were moved into LFS across the whole history with
  `git lfs migrate import`, so no plain blob exceeds GitHub's 50 MiB warning.
  Backup bundle: `~/Developer/_backups/2024-01_eagle_pre-lfs-migrate_2026-09-06.bundle`.
  Push payload is now about 300 MiB of git objects plus 2.5 GB of LFS.
- The remote is now `origin` = `https://github.com/kbankowski-econ/2024-01_eagle`
  (private), first pushed 2026-09-06. The dead GitLab remotes were removed;
  their URLs are kept in
  `~/Developer/_backups/2024-01_eagle_remotes-before_2026-09-06.txt`.
  `git lfs prune` can now reclaim about 10 GB in `.git/lfs`.
- Six leftover iCloud `" 2"` files with no original: `steady1 2.log`,
  `draftPaper 2.synctex(busy)` and four `shock_* 2.json` in the paper's
  `figures/`. Delete if unrecognised.
- The bibliography path in `draftPaper_localBibliographyPath.tex` still
  points into `~/Documents`, which is fine as long as the literature repo
  stays there.
- Stray `.log` files at the root and in `eagleParsingTemp` are gitignored
  Dynare output and can be deleted at any time.

**Paper** (details in `docs/2025-02_working-paper/.eagle.md`)
- Undefined `\ref`s and three missing citations block circulation.
- One unfilled `\source{}` note in Appendix B.
