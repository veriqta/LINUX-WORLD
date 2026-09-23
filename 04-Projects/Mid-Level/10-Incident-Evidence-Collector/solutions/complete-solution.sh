#!/usr/bin/env bash
set -u
umask 077
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
setup(){ [[ "$MAX_SECONDS" =~ ^[1-9][0-9]*$ ]]||exit 64; mkdir -p "$OUTPUT_DIR/raw"; chmod 700 "$OUTPUT_DIR" "$OUTPUT_DIR/raw"; }
capture(){ setup; timeout "$MAX_SECONDS" sh -c 'date --iso-8601=seconds; hostname; id; uptime; uname -a' >"$OUTPUT_DIR/raw/system.txt"; timeout "$MAX_SECONDS" df -hT >"$OUTPUT_DIR/raw/filesystems.txt"; timeout "$MAX_SECONDS" sh -c 'free -h; vmstat 1 2' >"$OUTPUT_DIR/raw/resources.txt"; if [ "$COLLECT_JOURNAL" = true ]&&command -v journalctl >/dev/null; then timeout "$MAX_SECONDS" journalctl -b -n100 --no-pager >"$OUTPUT_DIR/raw/journal.txt"||true; fi; sed -E -i 's/([0-9]{1,3}\.){3}[0-9]{1,3}/[REDACTED-IP]/g' "$OUTPUT_DIR/raw/"*.txt; sha256sum "$OUTPUT_DIR/raw/"* >"$OUTPUT_DIR/manifest.sha256"; tar -C "$OUTPUT_DIR" -czf "$OUTPUT_DIR/evidence.tar.gz" raw manifest.sha256; chmod 700 "$OUTPUT_DIR" "$OUTPUT_DIR/raw"; chmod 600 "$OUTPUT_DIR/manifest.sha256" "$OUTPUT_DIR/evidence.tar.gz" "$OUTPUT_DIR/raw/"*; }
verify(){ (cd "$OUTPUT_DIR"&&sha256sum -c manifest.sha256); tar -tzf "$OUTPUT_DIR/evidence.tar.gz" >/dev/null; printf 'PASS: evidence archive and manifest verified\n'; }
fail(){ printf 'tamper\n' >>"$OUTPUT_DIR/raw/system.txt"; if (cd "$OUTPUT_DIR"&&sha256sum -c manifest.sha256 >/dev/null 2>&1); then exit 1; fi; capture; verify; }
cleanup(){ chmod -R u+rwX "$OUTPUT_DIR" 2>/dev/null||true; rm -rf -- "$OUTPUT_DIR"; }
case "${1:-verify}" in install|configure) setup;; run) capture;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac
