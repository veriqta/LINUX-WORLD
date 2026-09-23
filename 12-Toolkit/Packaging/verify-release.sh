#!/usr/bin/env bash
set -Eeuo pipefail
archive="${1:-}";[[ -f "$archive" && -f "$archive.sha256" ]]||{ echo "Usage: $0 ARCHIVE" >&2;exit 64;};sha256sum -c "$archive.sha256";tar -tzf "$archive" >/dev/null;echo 'PASS: release checksum and archive'
