#!/usr/bin/env bash
set -u
printf 'Linux World environment report\n'
printf 'UTC: %s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
printf 'Host: %s\n' "$(hostname 2>/dev/null || printf unknown)"
printf 'Kernel: %s\n' "$(uname -srmo)"
if [[ -r /etc/os-release ]]; then . /etc/os-release; printf 'OS: %s\n' "${PRETTY_NAME:-unknown}"; fi
printf 'User: %s uid=%s\n' "$(id -un)" "$(id -u)"
printf 'Virtualization: %s\n' "$(systemd-detect-virt 2>/dev/null || printf unknown)"
printf 'Root filesystem: '; df -hP / | awk 'NR==2 {print $2 " total, " $4 " free"}'
printf 'Memory: '; awk '/MemTotal/ {printf "%.1f GiB\n", $2/1048576}' /proc/meminfo 2>/dev/null || printf 'unknown\n'
for c in bash systemctl ip ss findmnt lsblk curl python3; do
  if command -v "$c" >/dev/null 2>&1; then printf 'command %-10s available\n' "$c"; else printf 'command %-10s MISSING\n' "$c"; fi
done
printf 'This report does not prove the host is safe for destructive work. Complete the safety preflight.\n'
