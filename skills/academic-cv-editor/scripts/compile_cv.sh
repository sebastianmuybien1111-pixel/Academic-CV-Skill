#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 path/to/cv.tex [output-dir]" >&2
  exit 2
fi

TEX_FILE="$1"
OUT_DIR="${2:-$(dirname "$TEX_FILE")/build}"
mkdir -p "$OUT_DIR"

latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$OUT_DIR" "$TEX_FILE"

echo "Compiled PDF: $OUT_DIR/$(basename "${TEX_FILE%.tex}.pdf")"
