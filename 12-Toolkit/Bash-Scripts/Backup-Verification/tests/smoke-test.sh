#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/backup-verification.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "backup-verification.sh"
