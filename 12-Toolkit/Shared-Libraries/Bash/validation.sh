#!/usr/bin/env bash
require_command(){ command -v "$1" >/dev/null 2>&1||{ printf 'missing dependency: %s\n' "$1" >&2;return 69;};}
require_file(){ [[ -f "$1" ]]||{ printf 'file not found: %s\n' "$1" >&2;return 66;};}
require_uint(){ [[ "$2" =~ ^[0-9]+$ ]]||{ printf '%s must be an unsigned integer\n' "$1" >&2;return 64;};}
