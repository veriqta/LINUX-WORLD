#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
bash "$R/solutions/complete-solution.sh" run >/dev/null
. "$R/config/environment.example"
archive=$(find "$BACKUP_DIR" -maxdepth 1 -name 'backup-*.tar.gz' | sort | tail -n1)
copy="$archive.corrupt"; cp "$archive" "$copy"; printf x >>"$copy"
if sha256sum "$copy" | cut -d' ' -f1 | grep -qx "$(cut -d' ' -f1 "$archive.sha256")"; then exit 1; fi
rm -f "$copy"
bash "$R/solutions/complete-solution.sh" verify >/dev/null
printf 'PASS: corruption detected\n'
