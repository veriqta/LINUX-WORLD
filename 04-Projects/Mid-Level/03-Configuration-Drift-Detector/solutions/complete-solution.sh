#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
setup(){ mkdir -p "$TARGET_DIR" "$STATE_DIR"; printf 'approved=true\n' >"$TARGET_DIR/app.conf"; chmod 640 "$TARGET_DIR/app.conf"; }
manifest(){ find "$TARGET_DIR" -xdev -type f -printf '%P\0'|sort -z|while IFS= read -r -d '' f; do printf '%s\t%s\t%s\n' "$(sha256sum "$TARGET_DIR/$f"|cut -d' ' -f1)" "$(stat -c '%a:%U:%G' "$TARGET_DIR/$f")" "$f"; done >"$STATE_DIR/baseline.tsv"; }
verify(){ tmp=$(mktemp); find "$TARGET_DIR" -xdev -type f -printf '%P\0'|sort -z|while IFS= read -r -d '' f; do printf '%s\t%s\t%s\n' "$(sha256sum "$TARGET_DIR/$f"|cut -d' ' -f1)" "$(stat -c '%a:%U:%G' "$TARGET_DIR/$f")" "$f"; done >"$tmp"; diff -u "$STATE_DIR/baseline.tsv" "$tmp"; rm -f "$tmp"; printf 'PASS: no drift\n'; }
fail(){ printf 'approved=false\n' >"$TARGET_DIR/app.conf"; if verify; then exit 1; fi; printf 'approved=true\n' >"$TARGET_DIR/app.conf"; chmod 640 "$TARGET_DIR/app.conf"; verify; }
cleanup(){ rm -rf -- "$TARGET_DIR" "$STATE_DIR"; }
case "${1:-verify}" in install|configure) setup; manifest;; run) manifest;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

