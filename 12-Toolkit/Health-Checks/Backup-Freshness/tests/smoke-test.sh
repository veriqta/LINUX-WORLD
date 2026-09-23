#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-backup-freshness.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-backup-freshness.sh'
