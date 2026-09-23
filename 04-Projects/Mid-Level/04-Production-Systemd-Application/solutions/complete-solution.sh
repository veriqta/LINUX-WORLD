#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
root(){ [ "$(id -u)" -eq 0 ]||exit 77; }
setup(){ root; id "$APP_USER" >/dev/null 2>&1||useradd --system --home "$APP_DIR" --shell /usr/sbin/nologin "$APP_USER"; mkdir -p "$APP_DIR"; printf healthy >"$APP_DIR/health"; chown -R "$APP_USER":"$APP_USER" "$APP_DIR"; sed -e "s/__USER__/$APP_USER/g" -e "s#__DIR__#$APP_DIR#g" -e "s/__PORT__/$PORT/g" "$R/config/app.service" >"/etc/systemd/system/$UNIT_PREFIX.service"; systemd-analyze verify "/etc/systemd/system/$UNIT_PREFIX.service"; systemctl daemon-reload; systemctl enable --now "$UNIT_PREFIX"; }
verify(){ systemctl is-active --quiet "$UNIT_PREFIX"; curl -fsS "http://127.0.0.1:$PORT/health"|grep -q healthy; printf 'PASS: application healthy\n'; }
fail(){ root; chmod 000 "$APP_DIR/health"; ! curl -fsS "http://127.0.0.1:$PORT/health" >/dev/null 2>&1; chmod 640 "$APP_DIR/health"; chown "$APP_USER":"$APP_USER" "$APP_DIR/health"; verify; }
cleanup(){ root; systemctl disable --now "$UNIT_PREFIX" 2>/dev/null||true; rm -f "/etc/systemd/system/$UNIT_PREFIX.service"; systemctl daemon-reload; rm -rf -- "$APP_DIR"; id "$APP_USER" >/dev/null 2>&1&&userdel "$APP_USER"||true; }
case "${1:-verify}" in install|configure) setup;; run|verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

