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

import os, time, zipfile
from urllib.parse import urlparse
import requests

OUT = "/Users/emilepetraviciute/2025-03_eagle/data/raw_data/io"
os.makedirs(OUT, exist_ok=True)

# Paste your stats.oecd.org ZIP links here

URLS = [ "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=643231e9-a2b2-4742-a926-74ecfca616d0",
        "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=56fec3e0-37f1-46f0-bdfe-55a55a77ac2e", 
        "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=7128221e-df6a-4b07-b007-1d24f626325e",
      "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=522c2892-d649-4cf9-881a-5731de638b8b", 
      "https://stats.oecd.org/wbos/fileview2.aspx?IDFile=74a7f69b-7390-4a6f-86cd-ca4dce0ae480"]

SKIP_YEARS = ["2021", "2022"]   #

s = requests.Session()
s.headers.update({"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"})

for url in URLS:
    print("->", url)
    try:
        r = s.get(url, timeout=120, stream=True)
        r.raise_for_status()
    except Exception as e:
        print("   failed:", e)
        continue

    # infer filename
    cd = r.headers.get("content-disposition", "")
    if "filename=" in cd:
        fname = cd.split("filename=")[-1].strip(' "')
    else:
        fname = os.path.basename(urlparse(r.url).path) or "download.zip"

    # skip unwanted years
    if any(y in fname for y in SKIP_YEARS):
        print(f"   skipped (matches skip list): {fname}")
        continue

    local = os.path.join(OUT, fname)
    base, ext = os.path.splitext(local)
    i = 1
    while os.path.exists(local):
        local = f"{base}_{i}{ext}"; i += 1

    # save zip file
    with open(local, "wb") as f:
        for chunk in r.iter_content(8192):
            if chunk:
                f.write(chunk)
    print("   saved:", local)

    # unzip then delete zip
    if local.lower().endswith(".zip"):
        try:
            with zipfile.ZipFile(local, "r") as z:
                z.extractall(OUT)
            print(f"   extracted contents to {OUT}")
            os.remove(local)
            print("   deleted zip file after extraction")
        except zipfile.BadZipFile:
            print("   error: not a valid zip file")

    time.sleep(0.5)

print("done.")