#!/usr/bin/env bash
set -Eeuo pipefail
root="$(cd "$(dirname "$0")/.."&&pwd)";errors=0
while IFS= read -r -d '' f;do [[ "$(head -c2 "$f")" == '#!' ]]||continue;[[ -x "$f" ]]||{ echo "not executable: ${f#$root/}";errors=1;};done < <(find "$root" -type f \( -name '*.sh' -o -name '*.py' \) -print0)
((errors==0))&&echo 'PASS: executable permissions';exit "$errors"
