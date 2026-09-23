#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/audit-certificates.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: audit-certificates.py'
