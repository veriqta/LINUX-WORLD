#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-dns-health.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-dns-health.sh'
