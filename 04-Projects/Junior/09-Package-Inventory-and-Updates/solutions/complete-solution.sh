#!/usr/bin/env bash
set -u
umask 077
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
inventory(){ mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR"; cp /etc/os-release "$OUTPUT_DIR/os-release.txt"; if command -v dpkg-query >/dev/null; then dpkg-query -W | sort >"$OUTPUT_DIR/installed.tsv"; [ "$ASSESS_UPDATES" = true ] && apt list --upgradable 2>/dev/null >"$OUTPUT_DIR/updates.txt" || true; elif command -v rpm >/dev/null; then rpm -qa | sort >"$OUTPUT_DIR/installed.tsv"; [ "$ASSESS_UPDATES" = true ] && { dnf -q check-update >"$OUTPUT_DIR/updates.txt" || [ "$?" -eq 100 ]; }; else exit 69; fi; chmod 600 "$OUTPUT_DIR"/*; }
verify(){ [ -s "$OUTPUT_DIR/installed.tsv" ]; [ -s "$OUTPUT_DIR/os-release.txt" ]; printf 'packages=%s\n' "$(wc -l <"$OUTPUT_DIR/installed.tsv")"; printf 'PASS: inventory exists\n'; }
apply(){ [ "$APPLY_UPDATES" = true ] || { printf 'Refusing because APPLY_UPDATES=false\n' >&2; exit 77; }; printf 'Use an approved maintenance plan; this lab does not auto-update.\n'; }
case "${1:-run}" in install|configure) mkdir -p "$OUTPUT_DIR"; chmod 700 "$OUTPUT_DIR";; run) inventory;; verify|test) verify;; apply) apply;; cleanup) rm -rf -- "$OUTPUT_DIR";; *) exit 64;; esac

