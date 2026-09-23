#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/filesystem-usage-report.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "filesystem-usage-report.sh"
