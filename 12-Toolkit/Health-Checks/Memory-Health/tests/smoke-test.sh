#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-memory-health.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-memory-health.sh'
