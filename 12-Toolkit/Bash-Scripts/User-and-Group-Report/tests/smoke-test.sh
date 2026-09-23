#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/user-group-report.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "user-group-report.sh"
