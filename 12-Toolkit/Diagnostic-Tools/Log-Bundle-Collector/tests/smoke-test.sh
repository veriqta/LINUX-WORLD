#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/collect-log-bundle.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: collect-log-bundle.sh'
