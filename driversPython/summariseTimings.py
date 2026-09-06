"""Print median run time per stage and item, one column per machine.

    python3 driversPython/summariseTimings.py            # ok runs only
    python3 driversPython/summariseTimings.py --all      # include failed runs
    python3 driversPython/summariseTimings.py --minutes
"""
import os, sys
import pandas as pd

LOG = os.path.join(os.path.dirname(__file__), "..", "timings", "timings.csv")
df = pd.read_csv(LOG)
if "--all" not in sys.argv:
    df = df[df["status"] == "ok"]
unit = 60 if "--minutes" in sys.argv else 1
pivot = (df.pivot_table(index=["stage", "item"], columns="machine", values="seconds", aggfunc="median") / unit)
counts = df.groupby(["stage", "item"]).size().rename("runs")
out = pivot.join(counts)
pd.set_option("display.width", 160, "display.max_rows", 500)
print(out.round(0).to_string())
print()
totals = df[df["item"] != "chain"].groupby(["machine", "stage"])["seconds"].sum().unstack("machine") / unit
print("sum of item medians is not shown; totals of all logged runs per stage:")
print(totals.round(0).to_string())
