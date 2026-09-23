#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/investigate-boot.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: investigate-boot.sh'
