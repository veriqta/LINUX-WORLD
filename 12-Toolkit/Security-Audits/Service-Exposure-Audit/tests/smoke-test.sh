#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/audit-service-exposure.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: audit-service-exposure.sh'
