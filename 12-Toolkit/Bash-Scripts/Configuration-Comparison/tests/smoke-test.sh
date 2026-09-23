#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/configuration-comparison.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "configuration-comparison.sh"
