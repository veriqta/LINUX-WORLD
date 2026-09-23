#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/certificate-expiry-check.sh"
bash -n "$tool"
"$tool" --help >/dev/null
printf 'PASS: %s\n' "certificate-expiry-check.sh"
