#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/investigate-network.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: investigate-network.sh'
