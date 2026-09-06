"""Append run-time records to timings/timings.csv (same schema as utils.logTiming in MATLAB).

    from timinglog import log_timing, timed
    with timed("charts", "plotIRFs"):
        ...
    log_timing("paper", "latexmk", seconds=61)
"""
import os, socket, subprocess, time
from contextlib import contextmanager
from datetime import datetime

PROJECT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
LOG = os.path.join(PROJECT, "timings", "timings.csv")
HEADER = "timestamp,machine,stage,item,seconds,status,commit,note\n"


def _machine():
    return os.environ.get("EAGLE_MACHINE") or socket.gethostname().split(".")[0]


def _commit():
    try:
        return subprocess.run(["git", "-C", PROJECT, "rev-parse", "--short", "HEAD"],
                              capture_output=True, text=True, check=True).stdout.strip()
    except Exception:
        return "unknown"


def log_timing(stage, item, seconds, status="ok", note=""):
    os.makedirs(os.path.dirname(LOG), exist_ok=True)
    new = not os.path.exists(LOG)
    clean = lambda s: str(s).replace(",", ";")
    with open(LOG, "a") as f:
        if new:
            f.write(HEADER)
        f.write(f"{datetime.now():%Y-%m-%dT%H:%M:%S},{clean(_machine())},{clean(stage)},"
                f"{clean(item)},{seconds:.0f},{clean(status)},{_commit()},{clean(note)}\n")
    print(f"[timing] {stage} / {item}: {seconds:.0f} s ({status})")


@contextmanager
def timed(stage, item, note=""):
    t0 = time.time()
    try:
        yield
    except Exception:
        log_timing(stage, item, time.time() - t0, "failed", note)
        raise
    log_timing(stage, item, time.time() - t0, "ok", note)
