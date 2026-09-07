"""
Shared sizing helpers for the working-paper figure scripts (copied from the
spending-model paper's pyScripts/2026-06_wp-imf/wp_charts.py so the two papers
size their figures the same way).
  - chart_render_px:  read a chart's *render* (original) size (cm) -> pixels
  - chart_display_cm: read a chart's *display* size (cm) shown in the paper
  - font_px_for_pt:   canvas font size so text renders at a given point size
  - smart_save_image: write a PNG tagged so its natural size equals the display
                      size, only when its bytes change
  - write_pdf:        vector PDF whose natural size equals the display size
Both sizes live in chartTable.csv next to this module. RenderWidth/RenderHeight
set the plotly canvas (hence font sizes and resolution); DisplayWidth/
DisplayHeight set the size the figure appears at in the paper, so a bare
\\includegraphics{...} renders it there. Figures without a row in the table
use the defaults passed by the calling script.
"""
import struct
import zlib
from pathlib import Path

import plotly.io as pio

_THIS_DIR = Path(__file__).resolve().parent
CONFIG_CSV = _THIS_DIR / "chartTable.csv"
_CM_PER_INCH = 2.54
_CM_TO_PX = 37.795275591  # 1 cm at 96 DPI (the render canvas's logical DPI)
_PT_PER_INCH = 72.27       # TeX points per inch (LaTeX's "pt")

FONT_FAMILY = "Palatino, 'Palatino Linotype', 'Book Antiqua', serif"  # the paper's mathpazo


def font_px_for_pt(target_pt, render_width_px, display_width_cm):
    """Canvas font size (px) so chart text renders at `target_pt` points on the
    page, given the render width (px) and the on-page display width (cm)."""
    render_width_cm = render_width_px / _CM_TO_PX
    return round(target_pt * (96.0 / _PT_PER_INCH) * render_width_cm / display_width_cm, 1)


def _read_cm(stem, width_col, height_col, default_cm):
    """Read a (width_cm, height_cm) pair from chartTable.csv by matching pngFile.
    Falls back to default_cm if the file, row, or columns are missing/blank."""
    import csv
    width_cm, height_cm = default_cm
    if CONFIG_CSV.exists():
        with CONFIG_CSV.open(newline="", encoding="utf-8") as handle:
            for row in csv.DictReader(handle):
                if Path(row.get("pngFile", "")).name == f"{stem}.png":
                    if row.get(width_col) and row.get(height_col):
                        width_cm, height_cm = float(row[width_col]), float(row[height_col])
                    break
    return width_cm, height_cm


def chart_render_px(stem, default_cm):
    """Render canvas size in pixels from RenderWidth/RenderHeight (cm)."""
    width_cm, height_cm = _read_cm(stem, "RenderWidth", "RenderHeight", default_cm)
    return round(width_cm * _CM_TO_PX), round(height_cm * _CM_TO_PX)


def chart_display_cm(stem, default_cm):
    """Display size (width_cm, height_cm) shown in the paper."""
    return _read_cm(stem, "DisplayWidth", "DisplayHeight", default_cm)


def _png_with_dpi(png_bytes, dpi):
    """Insert a pHYs chunk so the PNG reports `dpi` (kaleido writes none)."""
    ppm = int(round(dpi / _CM_PER_INCH * 100))
    body = b"pHYs" + struct.pack(">IIB", ppm, ppm, 1)
    chunk = struct.pack(">I", 9) + body + struct.pack(">I", zlib.crc32(body) & 0xFFFFFFFF)
    ihdr_end = 8 + 4 + 4 + 13 + 4
    return png_bytes[:ihdr_end] + chunk + png_bytes[ihdr_end:]


def smart_save_image(fig, output_path, display_cm, scale=2):
    """Render `fig` to a PNG tagged so a bare \\includegraphics shows it at
    display_cm (aspect preserved). Writes only when the bytes change."""
    output_path = Path(output_path)
    new_bytes = pio.to_image(fig, format="png", scale=scale)
    px_w = int.from_bytes(new_bytes[16:20], "big")
    px_h = int.from_bytes(new_bytes[20:24], "big")
    width_cm, height_cm = display_cm
    dpi = max(px_w / (width_cm / _CM_PER_INCH), px_h / (height_cm / _CM_PER_INCH))
    new_bytes = _png_with_dpi(new_bytes, dpi)
    if output_path.exists() and output_path.read_bytes() == new_bytes:
        return False
    output_path.write_bytes(new_bytes)
    return True


def write_pdf(fig, output_path, render_width_px, display_width_cm):
    """Vector PDF whose natural size is the display width (aspect from the
    render canvas), so \\includegraphics{...pdf} needs no width= option."""
    scale = display_width_cm * _CM_TO_PX / render_width_px
    fig.write_image(str(output_path), format="pdf", scale=scale)
