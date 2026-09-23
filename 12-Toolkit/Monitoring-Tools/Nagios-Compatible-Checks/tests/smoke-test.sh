#!/usr/bin/env bash
set -Eeuo pipefail
dir="$(cd "$(dirname "$0")/.."&&pwd)"
while IFS= read -r -d '' f;do bash -n "$f";"$f" --help >/dev/null;done < <(find "$dir" -maxdepth 1 -name '*.sh' -print0)
echo 'PASS: Nagios-Compatible-Checks'
