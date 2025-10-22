#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Oct 19 22:03:31 2025

@author: emilepetraviciute

Data scrapping for EAGLE 
"""

"""
Input output tables 
"""

import os, time, re
from urllib.parse import urlparse
from hashlib import md5
import requests

OUT = r"/Users/emilepetraviciute/2025-03_eagle/data/raw_data"
os.makedirs(OUT, exist_ok=True)
LOG = os.path.join(OUT, "download_log.txt")

s = requests.Session()
s.headers.update({"User-Agent": "OECD-API-downloader/1.0 (petraviciute.emile@gmail.com)"})


# # Paste your stats.oecd.org ZIP links here

# URLS = [ "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=643231e9-a2b2-4742-a926-74ecfca616d0",
#         "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=56fec3e0-37f1-46f0-bdfe-55a55a77ac2e", 
#         "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=7128221e-df6a-4b07-b007-1d24f626325e",
#       "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=522c2892-d649-4cf9-881a-5731de638b8b", 
#       "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=74a7f69b-7390-4a6f-86cd-ca4dce0ae480"]

# SKIP_YEARS = ["2021", "2022"]   #

# s = requests.Session()
# s.headers.update({"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"})

# for url in URLS:
#     print("->", url)
#     try:
#         r = s.get(url, timeout=120, stream=True)
#         r.raise_for_status()
#     except Exception as e:
#         print("   failed:", e)
#         continue

#     # infer filename
#     cd = r.headers.get("content-disposition", "")
#     if "filename=" in cd:
#         fname = cd.split("filename=")[-1].strip(' "')
#     else:
#         fname = os.path.basename(urlparse(r.url).path) or "download.zip"

#     # skip unwanted years
#     if any(y in fname for y in SKIP_YEARS):
#         print(f"   skipped (matches skip list): {fname}")
#         continue

#     local = os.path.join(OUT, fname)
#     base, ext = os.path.splitext(local)
#     i = 1
#     while os.path.exists(local):
#         local = f"{base}_{i}{ext}"; i += 1

#     # save zip file
#     with open(local, "wb") as f:
#         for chunk in r.iter_content(8192):
#             if chunk:
#                 f.write(chunk)
#     print("   saved:", local)

#     # unzip then delete zip
#     if local.lower().endswith(".zip"):
#         try:
#             with zipfile.ZipFile(local, "r") as z:
#                 z.extractall(OUT)
#             print(f"   extracted contents to {OUT}")
#             os.remove(local)
#             print("   deleted zip file after extraction")
#         except zipfile.BadZipFile:
#             print("   error: not a valid zip file")

#     time.sleep(0.5)

# print("done.")

# OECD 

''' 
OECD:
    Capital tax loc. currency, consumption, debt?, operating surplus +, 
    operating surplus loc. currency, taxes, transfers, wage income
'''
API_TASKS = [
    {"url":'https://sdmx.oecd.org/public/rest/data/OECD.SDD.NAD,DSD_NAMAIN10@DF_TABLE1_INCOME,2.0/A.EA20+EU27_2020+WXOECD+AUT+BEL+CAN+CHL+COL+CRI+CZE+DNK+EST+FIN+FRA+DEU+GRC+HUN+ISL+IRL+ISR+ITA+JPN+KOR+LVA+LTU+LUX+MEX+NLD+NZL+NOR+POL+PRT+SVK+SVN+ESP+SWE+CHE+TUR+GBR+USA+ALB+BRA+BGR+CPV+CMR+CHN+HRV+CYP+GEO+HKG+KAZ+MLT+MAR+MKD+ROU+RUS+SAU+SEN+SRB+SGP+ZAF+ZMB+AUS...B2A3G.._T..USD_EXC.V..?startPeriod=1995&endPeriod=2020&dimensionAtObservation=AllDimensions&format=csvfilewithlabels',
     "name": "operating_surplus.csv"},
    {"url":'https://sdmx.oecd.org/public/rest/data/OECD.SDD.NAD,DSD_NAMAIN10@DF_TABLE1_INCOME,2.0/A.EA20+EU27_2020+WXOECD+AUT+BEL+CAN+CHL+COL+CRI+CZE+DNK+EST+FIN+FRA+DEU+GRC+HUN+ISL+IRL+ISR+ITA+JPN+KOR+LVA+LTU+LUX+MEX+NLD+NZL+NOR+POL+PRT+SVK+SVN+ESP+SWE+CHE+TUR+GBR+USA+ALB+BRA+BGR+CPV+CMR+CHN+HRV+CYP+GEO+HKG+KAZ+MLT+MAR+MKD+ROU+RUS+SAU+SEN+SRB+SGP+ZAF+ZMB+AUS...B2A3G.._T..XDC.V..?startPeriod=1995&endPeriod=2020&dimensionAtObservation=AllDimensions&format=csvfilewithlabels',
     "name": "operating_surplus_local.csv"}
    ]


''' Debt''' 
''' Transfers '''
''' Taxes ''' 

'''
IMF
'''


''' 
Eurostat
'''

def _safe(name, prefer_ext=".csv"):
    name = re.sub(r'[\\/:"*?<>|]+', '_', name).strip()
    root, ext = os.path.splitext(name)
    if not ext:
        ext = prefer_ext
    name = (root + ext) if root else ("oecd" + ext)
    if len(name) > 100:
        h = md5(name.encode()).hexdigest()[:8]
        name = (root[:60] if root else "oecd") + "_" + h + ext
    return name

with open(LOG, "a") as lf:
    lf.write("\n=== run at {} ===\n".format(time.strftime("%Y-%m-%d %H:%M:%S")))

for t in API_TASKS:
    url = t["url"]
    user_name = t.get("name", None)
    print("Fetching:", url)
    try:
        r = s.get(url, timeout=120, stream=True)
        r.raise_for_status()
        ctype = r.headers.get("content-type","").lower()
        pref_ext = ".json" if "json" in ctype else ".csv"
        raw_name = user_name if user_name else os.path.basename(urlparse(r.url).path) or "oecd_download"
        fname = _safe(raw_name, prefer_ext=pref_ext)
        out = os.path.join(OUT, fname)
        base, ext = os.path.splitext(out); i = 1
        while os.path.exists(out):
            out = f"{base}_{i}{ext}"; i += 1
        with open(out, "wb") as fh:
            for chunk in r.iter_content(8192):
                if chunk: fh.write(chunk)
        print("  saved ->", out)
        with open(LOG, "a") as lf:
            lf.write(f"OK: {url} -> {out}\n")
    except Exception as e:
        print("  FAILED:", e)
        with open(LOG, "a") as lf:
            lf.write(f"FAILED: {url} -> {e}\n")
    time.sleep(0.3)

print("Done. Files in:", OUT)
