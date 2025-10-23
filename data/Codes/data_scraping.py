"""

How to use:
1. Put this file and your `oecd_requests.csv` in the same folder.
2. Edit `oecd_requests.csv` to include your jobs (see example below).
3. Run: `data_scraping.py`
4. Downloaded files are written to the paths in the CSV's output_file column.
   CSV outputs are automatically loaded into pandas DataFrames and stored in `dataframes`.

Requirements:
    pip install requests pandas
"""
import time, requests, pandas as pd
from pathlib import Path
from urllib.parse import quote_plus
from io import StringIO

# === CONFIG ===
INPUT_DIR  = Path(r"/Users/emilepetraviciute/2025-03_eagle/data/Codes")      # folder containing oecd_requests.csv
OUTPUT_DIR = Path(r"/Users/emilepetraviciute/2025-03_eagle/data/raw_data")   # where downloaded data will be saved
CSV_FILE = "oecd_requests.csv"                      # name of the dictionary CSV
OECD_HOST  = "https://sdmx.oecd.org/public/rest"
HEADERS    = {"User-Agent": "short-downloader/1.0"}

def read_jobs():
    p = INPUT_DIR / CSV_FILE
    return pd.read_csv(p, dtype=str).fillna("").to_dict(orient="records")



def try_get(url, params=None, attempts=6):
    import time
    for i in range(attempts):
        try:
            r = requests.get(url, params=params, headers=HEADERS, timeout=60)
        except requests.RequestException as e:
            # network error — back off a bit and retry
            wait = 5 * (i + 1)
            print(f"Request exception: {e}. sleeping {wait}s")
            time.sleep(wait)
            continue

        if r.status_code == 200:
            return r

        if r.status_code == 429:
            # show headers so we can inspect Retry-After etc.
            ra = r.headers.get("Retry-After")
            print("Received 429. Response headers:", dict(r.headers))
            # If server suggests a numeric Retry-After, use it; otherwise fallback to exponential
            try:
                ra_val = int(str(ra).strip()) if ra is not None else None
            except Exception:
                ra_val = None
            # enforce a safe minimum wait (e.g. 10s) to avoid immediate retries
            if ra_val is not None and ra_val > 0:
                wait = max(ra_val, 10)
            else:
                # no valid numeric RA or RA==0 -> fall back to exponential backoff (60s,120s,...)
                wait = 60 * (i + 1)
                # but still enforce a minimum in case i==0
                wait = max(wait, 10)
            print(f"429 => sleeping {wait} seconds before retry (attempt {i+1}/{attempts})")
            time.sleep(wait)
            continue

        # other non-200 codes: wait and retry (exponential)
        wait = 10 * (i + 1)
        print(f"HTTP {r.status_code} received. Sleeping {wait}s before retry.")
        time.sleep(wait)

    return None


def discover_country_codes(ds_part, row):
    order = [s.strip() for s in (row.get("selection_order") or "").split(",") if s.strip()] or \
            ["countries","standard_revenue","country_specific_revenue","sector","measure","unit"]
    sel = quote_plus(".".join([".."]*len(order)), safe="+.,_/()")
    url = f"{OECD_HOST}/data/{ds_part}/{sel}"
    params = {"format": row.get("format","csvfile"), "dimensionAtObservation": row.get("dimensionAtObservation","AllDimensions")}
    if row.get("endPeriod"): params["startPeriod"]=params["endPeriod"]=row["endPeriod"]
    r = try_get(url, params=params)
    if not r: return None
    try:
        df = pd.read_csv(StringIO(r.text), dtype=str)
    except: return None
    for c in df.columns:
        if c.upper().replace(" ","_") in ("REF_AREA","REF_AREA_CODE","REFERENCE_AREA"):
            return sorted(df[c].dropna().unique().tolist())
    # fallback: take the shortest-string column as codes
    cand = sorted(df.columns, key=lambda x: df[x].dropna().astype(str).map(len).median() if len(df[x].dropna())>0 else 999)
    return sorted(df[cand[0]].dropna().unique().tolist()) if cand else None

def make_ds_part(row):
    ds = (row.get("dataset") or "").strip()
    agency = (row.get("agency") or "OECD").strip()
    if not ds: raise ValueError("dataset missing")
    if not ds.startswith(agency+".") and not ds.upper().startswith("OECD."): ds = f"{agency}.{ds}"
    ver = (row.get("version") or "").strip()
    if ver and not ds.endswith(ver): ds = f"{ds},{ver}"
    return ds

def build_selection(row, available=None):
    # countries logic
    raw = (row.get("countries") or "").strip()
    inc = (row.get("countries_include") or "").strip()
    exc = (row.get("countries_exclude") or "").strip()
    if inc: countries = inc
    elif raw: countries = raw
    elif exc:
        if not available: raise RuntimeError("cannot apply countries_exclude - available codes unknown")
        exc_set = {c.strip() for c in exc.split("+") if c.strip()}
        keep = [c for c in available if c not in exc_set]
        countries = "+".join(keep) if keep else ".."
    else:
        countries = ".."
    order = [s.strip() for s in (row.get("selection_order") or "").split(",") if s.strip()] or \
            ["countries","standard_revenue","country_specific_revenue","sector","measure","unit"]
    parts = []
    for name in order:
        parts.append(countries if name=="countries" else ((row.get(name) or "").strip() or ".."))
    return quote_plus(".".join(parts), safe="+.,_/()")

def save_text(text, path):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")

def main():
    jobs = read_jobs()
    loaded = {}
    for i,row in enumerate(jobs,1):
        job = (row.get("job_name") or f"job_{i}").strip()
        print(f"[{i}/{len(jobs)}] {job}")
        ds = make_ds_part(row)
        need_discover = not row.get("countries") and not row.get("countries_include") and row.get("countries_exclude")
        avail = discover_country_codes(ds, row) if need_discover else None
        try:
            sel = build_selection(row, available=avail)
        except Exception as e:
            print(" skip:", e); continue
        url = f"{OECD_HOST}/data/{ds}/{sel}"
        params = {k: row[k] for k in ("startPeriod","endPeriod","format","dimensionAtObservation") if row.get(k)}
        print(" URL:", url)
        r = try_get(url, params=params)
        if not r: print(" failed"); continue
        out = OUTPUT_DIR / (row.get("output_file") or f"{job}.out")
        save_text(r.text, out)
        print(" saved:", out)
        if out.suffix.lower() == ".csv":
            try: loaded[job] = pd.read_csv(out, dtype=str)
            except: pass
        time.sleep(0.35)
    print("Done. Loaded:", list(loaded.keys()))
    return loaded

if __name__ == "__main__":
    main()


