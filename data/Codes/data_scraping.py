import os, pandas as pd, requests, time
from pathlib import Path

# === Relative paths ===
base_dir = Path(os.path.dirname(__file__)).resolve()
data_dir = base_dir.parent
raw_data_dir = data_dir / "raw_data"
raw_io_dir = raw_data_dir / "io"

csv_path = data_dir / "Codes" / "oecd_requests.csv"
HEADERS = {"User-Agent": "oecd-downloader"}

df = pd.read_csv(csv_path, dtype=str).fillna("")
for i, r in df.iterrows():
    job, url, out = r.get("job_name", f"job{i}"), r.get("url","").strip(), r.get("output_file","").strip()
    if not url or not out:
        print(f"[{i}] skip: missing url or output_file"); continue
    print(f"[{i}] {job}: {url}")
    try:
        res = requests.get(url, params={"format": "csvfilewithlabels"}, headers=HEADERS, timeout=60)
        if res.status_code == 200:
            out_path = raw_io_dir / out
            out_path.parent.mkdir(parents=True, exist_ok=True)
            out_path.write_text(res.text, encoding="utf-8")
            print(" saved", out_path)
        else:
            print(" HTTP", res.status_code)
    except Exception as e:
        print(" error:", e)
    time.sleep(0.2)

