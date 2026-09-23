#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-time-sync.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-time-sync.sh'
