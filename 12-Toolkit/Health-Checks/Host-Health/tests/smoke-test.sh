#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-host-health.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-host-health.sh'
