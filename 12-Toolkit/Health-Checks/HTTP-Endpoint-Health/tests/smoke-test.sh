#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-http-endpoint.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-http-endpoint.py'
