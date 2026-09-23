#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/large-file-finder.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "large-file-finder.sh"
