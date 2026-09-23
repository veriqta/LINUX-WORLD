#!/usr/bin/env bash
set -u
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); CONFIG="$ROOT_DIR/config/environment.conf"; [ -f "$CONFIG" ] || CONFIG="$ROOT_DIR/config/environment.example"; . "$CONFIG"
need_root(){ [ "$(id -u)" -eq 0 ] || exit 77; }
setup(){ need_root; command -v python3 >/dev/null; command -v curl >/dev/null; id "$SERVICE_USER" >/dev/null 2>&1 || useradd --system --home "$APP_DIR" --shell /usr/sbin/nologin "$SERVICE_USER"; mkdir -p "$APP_DIR"; printf '<!doctype html><title>Linux World</title><h1>healthy</h1>\n' >"$APP_DIR/index.html"; chown -R "$SERVICE_USER":"$SERVICE_USER" "$APP_DIR"; chmod 750 "$APP_DIR"; chmod 640 "$APP_DIR/index.html"; sed -e "s/__USER__/$SERVICE_USER/g" -e "s#__DIR__#$APP_DIR#g" -e "s/__PORT__/$PORT/g" "$ROOT_DIR/config/linux-world-web.service" >"/etc/systemd/system/$SERVICE_NAME.service"; systemd-analyze verify "/etc/systemd/system/$SERVICE_NAME.service"; systemctl daemon-reload; systemctl enable --now "$SERVICE_NAME.service"; }
verify(){ systemctl is-active --quiet "$SERVICE_NAME.service"; curl --fail --silent "http://127.0.0.1:$PORT/" | grep -q healthy; [ "$(systemctl show "$SERVICE_NAME.service" -p User --value)" = "$SERVICE_USER" ]; printf 'PASS: service active and healthy\n'; }
cleanup(){ need_root; systemctl disable --now "$SERVICE_NAME.service" 2>/dev/null || true; rm -f "/etc/systemd/system/$SERVICE_NAME.service"; systemctl daemon-reload; rm -rf -- "$APP_DIR"; id "$SERVICE_USER" >/dev/null 2>&1 && userdel "$SERVICE_USER" || true; }
case "${1:-verify}" in install|configure) setup;; run|verify|test) verify;; cleanup) cleanup;; *) exit 64;; esac

