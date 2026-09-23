#!/usr/bin/env bash
set -Eeuo pipefail
root="$(cd "$(dirname "$0")/.."&&pwd)"
mapfile -d '' files < <(find "$root" -type f -name '*.py' -print0)
python3 -m py_compile "${files[@]}"
echo "PASS: python compilation files=${#files[@]}"
