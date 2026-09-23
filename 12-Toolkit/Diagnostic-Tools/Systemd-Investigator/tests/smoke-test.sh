#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.."&&pwd)/investigate-systemd.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: investigate-systemd.sh'
