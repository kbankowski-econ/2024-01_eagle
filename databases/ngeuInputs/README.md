# NGEU shock inputs

Copied on 2026-09-07 from the ECB-MC project so that the pipeline no longer
reads from iCloud, which kept evicting the files (see README, Known issues).

| File | Original location | Original mtime | SHA-256 (first 16) |
|---|---|---|---|
| `shockInput_NGEU_24repFQ_AEJun24.mat` | `~/Documents/0000-00_work/2021-05_ECB-MC/ecb-mc/databases/FiscalBMENote/` | 2025-11-21 | `44051ef9a150e310` |
| `weo_data.csv` | same folder | 2025-11-21 | `99c4bf37c6654e74` |

ECB-MC commit at the time of copying: `unknown (repo metadata evicted by iCloud)`.

These are the only inputs `driversMatlab/processNGEUdata.m` takes from
outside the project. If the ECB-MC files are updated, copy them here again and
update this table; the `project_path_ecbMC` entry in `paths.m` is no longer
used by the pipeline.
