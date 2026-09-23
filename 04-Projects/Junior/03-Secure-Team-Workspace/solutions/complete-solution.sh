#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
need_root(){ [ "$(id -u)" -eq 0 ] || exit 77; }; valid(){ [[ "$1" =~ ^[a-z_][a-z0-9_-]*$ ]]; }
setup(){ need_root; valid "$TEAM_GROUP" && valid "$USER_ONE" && valid "$USER_TWO" || exit 64; getent group "$TEAM_GROUP" >/dev/null || groupadd "$TEAM_GROUP"; for u in "$USER_ONE" "$USER_TWO"; do id "$u" >/dev/null 2>&1 || useradd -m "$u"; usermod -aG "$TEAM_GROUP" "$u"; done; mkdir -p "$WORKSPACE/shared" "$WORKSPACE/private"; chown -R root:"$TEAM_GROUP" "$WORKSPACE"; chmod 2750 "$WORKSPACE" "$WORKSPACE/shared"; chmod 2700 "$WORKSPACE/private"; setfacl -m g:"$TEAM_GROUP":rwx,m:rwx "$WORKSPACE/shared"; setfacl -d -m g:"$TEAM_GROUP":rwx,m:rwx,o::--- "$WORKSPACE/shared"; }
verify(){ [ "$(stat -c %G "$WORKSPACE/shared")" = "$TEAM_GROUP" ]; getfacl "$WORKSPACE/shared" | grep -q 'default:group:'; sudo -u "$USER_ONE" sh -c "printf one > '$WORKSPACE/shared/from-one.txt'"; sudo -u "$USER_TWO" test -r "$WORKSPACE/shared/from-one.txt"; ! sudo -u "$USER_ONE" test -r "$WORKSPACE/private"; printf 'PASS: collaboration allowed and private area denied\n'; }
cleanup(){ need_root; rm -rf -- "$WORKSPACE"; for u in "$USER_ONE" "$USER_TWO"; do id "$u" >/dev/null 2>&1 && userdel -r "$u" || true; done; getent group "$TEAM_GROUP" >/dev/null && groupdel "$TEAM_GROUP" || true; }
case "${1:-verify}" in install|configure) setup;; run|verify|test) verify;; cleanup) cleanup;; *) exit 64;; esac

