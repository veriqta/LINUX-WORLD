#!/usr/bin/env bash
set -Eeuo pipefail
dir="$(cd "$(dirname "$0")/.."&&pwd)"
python3 -m py_compile "$dir"/*.py
for f in "$dir"/*.py;do "$f" --help >/dev/null;done
