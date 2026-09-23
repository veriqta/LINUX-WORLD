#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
validate(){ [[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]] && [ "$SOURCE_DIR" != / ] && [ "$BACKUP_DIR" != / ]; }
setup(){ validate || exit 64; mkdir -p "$SOURCE_DIR" "$BACKUP_DIR"; chmod 700 "$SOURCE_DIR" "$BACKUP_DIR"; [ -e "$SOURCE_DIR/example.txt" ] || printf 'Linux World backup lab\n' >"$SOURCE_DIR/example.txt"; }
backup(){ setup; exec 9>"$BACKUP_DIR/.lock"; flock -n 9 || exit 75; stamp=$(date +%Y%m%dT%H%M%S); archive="$BACKUP_DIR/backup-$stamp.tar.gz"; tar -C "$SOURCE_DIR" -czf "$archive" .; sha256sum "$archive" >"$archive.sha256"; find "$BACKUP_DIR" -maxdepth 1 -type f -name 'backup-*.tar.gz' -mtime +"$RETENTION_DAYS" -delete; printf '%s\n' "$archive"; }
verify(){ archive=$(find "$BACKUP_DIR" -maxdepth 1 -name 'backup-*.tar.gz' | sort | tail -n1); [ -n "$archive" ]; sha256sum -c "$archive.sha256"; tar -tzf "$archive" >/dev/null; printf 'PASS: backup integrity verified\n'; }
restore(){ archive=$(find "$BACKUP_DIR" -maxdepth 1 -name 'backup-*.tar.gz' | sort | tail -n1); [ -n "$archive" ]; rm -rf -- "$RESTORE_DIR"; mkdir -p "$RESTORE_DIR"; tar -C "$RESTORE_DIR" -xzf "$archive"; diff -qr "$SOURCE_DIR" "$RESTORE_DIR"; }
cleanup(){ rm -rf -- "$SOURCE_DIR" "$BACKUP_DIR" "$RESTORE_DIR"; }
case "${1:-run}" in install|configure) setup;; run) backup;; verify|test) verify;; restore) restore;; cleanup) cleanup;; *) exit 64;; esac

