#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/collect-system-snapshot.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: collect-system-snapshot.sh'
