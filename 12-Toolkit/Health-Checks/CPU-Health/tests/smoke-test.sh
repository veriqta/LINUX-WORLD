#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-cpu-health.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-cpu-health.sh'
