#!/bin/zsh
# Build the working paper with latexmk and log the run time to timings/timings.csv.
# Usage: bashScripts/buildPaper.sh   (from anywhere)
R="$(cd "$(dirname "$0")/.." && pwd)"
TEX="$R/docs/2025-02_working-paper/draftPaper.tex"
t0=$(date +%s)
latexmk -pdf -cd -interaction=nonstopmode "$TEX"
rc=$?
secs=$(( $(date +%s) - t0 ))
st=ok; [ $rc -ne 0 ] && st=failed
machine="${EAGLE_MACHINE:-$(hostname -s)}"
sha=$(git -C "$R" rev-parse --short HEAD 2>/dev/null || echo unknown)
mkdir -p "$R/timings"
[ -f "$R/timings/timings.csv" ] || echo "timestamp,machine,stage,item,seconds,status,commit,note" > "$R/timings/timings.csv"
echo "$(date +%Y-%m-%dT%H:%M:%S),$machine,paper,latexmk,$secs,$st,$sha," >> "$R/timings/timings.csv"
echo "[timing] paper / latexmk: $secs s ($st)"
exit $rc
