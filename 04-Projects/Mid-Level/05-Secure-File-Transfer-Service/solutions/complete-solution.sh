#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
root(){ [ "$(id -u)" -eq 0 ]||exit 77; }
setup(){ root; getent group "$SFTP_GROUP" >/dev/null||groupadd "$SFTP_GROUP"; id "$SFTP_USER" >/dev/null 2>&1||useradd -g "$SFTP_GROUP" -d /upload -s /usr/sbin/nologin "$SFTP_USER"; mkdir -p "$SFTP_ROOT/upload"; chown root:root "$SFTP_ROOT"; chmod 755 "$SFTP_ROOT"; chown "$SFTP_USER":"$SFTP_GROUP" "$SFTP_ROOT/upload"; chmod 750 "$SFTP_ROOT/upload"; }
verify(){ [ "$(stat -c %U "$SFTP_ROOT")" = root ]; [ "$(stat -c %U "$SFTP_ROOT/upload")" = "$SFTP_USER" ]; printf 'PASS: chroot ownership model verified; apply Match policy from config/sftp-match.conf after review\n'; }
fail(){ chown "$SFTP_USER":"$SFTP_GROUP" "$SFTP_ROOT"; if [ "$(stat -c %U "$SFTP_ROOT")" = root ]; then exit 1; fi; chown root:root "$SFTP_ROOT"; verify; }
cleanup(){ root; rm -rf -- "$SFTP_ROOT"; id "$SFTP_USER" >/dev/null 2>&1&&userdel "$SFTP_USER"||true; getent group "$SFTP_GROUP" >/dev/null&&groupdel "$SFTP_GROUP"||true; }
case "${1:-verify}" in install|configure) setup;; run|verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

