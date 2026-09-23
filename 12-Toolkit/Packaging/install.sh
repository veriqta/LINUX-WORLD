#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'
prefix="/usr/local/lib/linux-world-toolkit"
while (($#));do case "$1" in --prefix) prefix="${2:-}";shift 2;;-h|--help) echo "Usage: $0 [--prefix ABSOLUTE_PATH]";exit 0;;*)echo "unknown argument: $1" >&2;exit 64;;esac;done
[[ "$prefix" == /* && "$prefix" != / ]]||{ echo 'prefix must be an absolute non-root path' >&2;exit 64;}
root="$(cd "$(dirname "$0")/.."&&pwd)";install -d -m 0755 "$prefix";tar --exclude='.git' --exclude='__pycache__' -C "$root" -cf - .|tar -C "$prefix" -xf -;find "$prefix" -type f -printf '%P\n'|sort >"$prefix/.install-manifest";echo "Installed to $prefix"
