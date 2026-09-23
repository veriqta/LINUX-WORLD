#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/audit-package-integrity.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: audit-package-integrity.sh'
