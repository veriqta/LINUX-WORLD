#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/compare-host-state.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: compare-host-state.py'
