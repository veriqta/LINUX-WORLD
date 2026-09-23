#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/scheduled-maintenance.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "scheduled-maintenance.sh"
