#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
need_root(){ [ "$(id -u)" -eq 0 ] || { printf 'Run with sudo.\n' >&2; exit 77; }; }
validate(){ [[ "$LAB_GROUP" =~ ^[a-z_][a-z0-9_-]*$ ]] && [[ "$LAB_USER" =~ ^[a-z_][a-z0-9_-]*$ ]]; }
setup(){ need_root; validate || exit 64; getent group "$LAB_GROUP" >/dev/null || groupadd "$LAB_GROUP"; id "$LAB_USER" >/dev/null 2>&1 || useradd -m -s /bin/bash "$LAB_USER"; usermod -aG "$LAB_GROUP" "$LAB_USER"; printf '%s ALL=(root) NOPASSWD: %s\n' "$LAB_USER" "$SUDO_COMMAND" >"/etc/sudoers.d/linux-world-access"; chmod 440 /etc/sudoers.d/linux-world-access; visudo -cf /etc/sudoers.d/linux-world-access; }
verify(){ getent group "$LAB_GROUP" >/dev/null; id "$LAB_USER" | grep -q "$LAB_GROUP"; visudo -cf /etc/sudoers.d/linux-world-access >/dev/null; sudo -l -U "$LAB_USER" | grep -Fq "$SUDO_COMMAND"; printf 'PASS: identity and delegated command verified\n'; }
cleanup(){ need_root; rm -f /etc/sudoers.d/linux-world-access; id "$LAB_USER" >/dev/null 2>&1 && userdel -r "$LAB_USER" || true; getent group "$LAB_GROUP" >/dev/null && groupdel "$LAB_GROUP" || true; }
case "${1:-verify}" in install|configure) setup;; run|verify|test) verify;; cleanup) cleanup;; *) exit 64;; esac

