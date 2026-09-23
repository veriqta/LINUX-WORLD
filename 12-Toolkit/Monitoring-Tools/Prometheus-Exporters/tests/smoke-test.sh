#!/usr/bin/env bash
set -Eeuo pipefail
dir="$(cd "$(dirname "$0")/.."&&pwd)"
find "$dir" -name '*.py' -print0|xargs -0 -n1 python3 -m py_compile
