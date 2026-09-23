#!/usr/bin/env bash
set -Eeuo pipefail
root="$(cd "$(dirname "$0")/.."&&pwd)"
count=0
while IFS= read -r -d '' f;do bash -n "$f";((count+=1));done < <(find "$root" -type f -name '*.sh' -print0)
echo "PASS: bash syntax files=$count"
