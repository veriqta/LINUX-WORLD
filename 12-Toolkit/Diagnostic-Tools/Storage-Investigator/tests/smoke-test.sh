#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/investigate-storage.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: investigate-storage.sh'
