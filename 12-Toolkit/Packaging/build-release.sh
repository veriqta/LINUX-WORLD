#!/usr/bin/env bash
set -Eeuo pipefail
root="$(cd "$(dirname "$0")/.."&&pwd)";out="${1:-$PWD/linux-world-toolkit.tar.gz}";epoch="${SOURCE_DATE_EPOCH:-0}";tar --sort=name --mtime="@$epoch" --owner=0 --group=0 --numeric-owner --exclude='__pycache__' --exclude='*.pyc' -C "$(dirname "$root")" -czf "$out" "$(basename "$root")";sha256sum "$out">"$out.sha256";echo "Built $out"
