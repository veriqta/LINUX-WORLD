#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/service-inventory.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "service-inventory.sh"
