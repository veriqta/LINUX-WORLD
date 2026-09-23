#!/usr/bin/env bash
set -Eeuo pipefail
tool="$(cd "$(dirname "$0")/.." && pwd)/check-systemd-service.sh"
bash -n "$tool"
"$tool" --help >/dev/null
echo 'PASS: check-systemd-service.sh'
