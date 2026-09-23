#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-tls-certificate.py"
python3 -m py_compile "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-tls-certificate.py'
