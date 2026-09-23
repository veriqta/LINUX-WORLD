#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/audit-secret-exposure.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: audit-secret-exposure.py'
