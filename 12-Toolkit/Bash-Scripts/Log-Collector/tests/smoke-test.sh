#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/log-collector.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "log-collector.sh"
