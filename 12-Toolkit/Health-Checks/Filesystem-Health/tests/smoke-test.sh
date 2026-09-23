#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-filesystem-health.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-filesystem-health.sh'
