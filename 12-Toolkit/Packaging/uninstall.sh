#!/usr/bin/env bash
set -Eeuo pipefail
prefix="";while (($#));do case "$1" in --prefix)prefix="${2:-}";shift 2;;-h|--help)echo "Usage: $0 --prefix ABSOLUTE_PATH";exit 0;;*)exit 64;;esac;done
[[ "$prefix" == /* && "$prefix" != / && -f "$prefix/.install-manifest" ]]||{ echo 'valid installed prefix required' >&2;exit 64;}
while IFS= read -r item;do [[ -n "$item" && "$item" != /* && "$item" != *'..'* ]]||continue;rm -f -- "$prefix/$item";done <"$prefix/.install-manifest";rm -f -- "$prefix/.install-manifest";find "$prefix" -depth -type d -empty -delete;echo "Removed installed files from $prefix"
