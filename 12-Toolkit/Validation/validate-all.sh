#!/usr/bin/env bash
set -Eeuo pipefail
here="$(cd "$(dirname "$0")"&&pwd)"
checks=(test-bash-tools.sh test-python-tools.sh check-permissions.sh check-documentation.py check-sensitive-data.py shellcheck-all.sh)
for check in "${checks[@]}";do echo "==> $check";"$here/$check";done
echo 'PASS: toolkit validation complete'
