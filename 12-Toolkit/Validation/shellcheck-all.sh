#!/usr/bin/env bash
set -Eeuo pipefail
root="$(cd "$(dirname "$0")/.."&&pwd)"
if ! command -v shellcheck>/dev/null;then echo 'SKIP: shellcheck not installed';exit 0;fi
mapfile -d '' files < <(find "$root" -type f -name '*.sh' -print0)
shellcheck -x "${files[@]}"
