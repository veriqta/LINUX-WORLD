#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/generate-security-baseline.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: generate-security-baseline.py'
