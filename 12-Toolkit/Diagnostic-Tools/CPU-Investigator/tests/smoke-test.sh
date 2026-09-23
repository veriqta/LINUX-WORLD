#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/investigate-cpu.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: investigate-cpu.sh'
