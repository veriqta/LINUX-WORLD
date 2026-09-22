# Troubleshooting Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Identity | `hostname; id; date --iso-8601=seconds` |
| Failed services | `systemctl --failed` |
| Service state | `systemctl status UNIT --no-pager -l` |
| Service logs | `journalctl -u UNIT -b -n 200` |
| Kernel warnings | `journalctl -k -b -p warning..alert` |
| Capacity | `df -hT; df -ih` |
| Memory | `free -h; vmstat 1 5` |
| Top processes | `ps -eo pid,ppid,user,stat,%cpu,%mem,etime,cmd --sort=-%cpu | head -20` |
| Network state | `ip -br addr; ip route; ss -lntup` |
| DNS | `resolvectl status; dig +short NAME` |
| Port test | `nc -vz HOST PORT` |
| Recent changes, Debian | `grep -h ' install\| upgrade\| remove ' /var/log/dpkg.log` |
| Recent changes, RPM | `sudo dnf history list` |
| Open deleted files | `sudo lsof +L1` |
| Configuration difference | `diff -u KNOWN_GOOD CURRENT` |
| Exact error status | `COMMAND; printf 'status=%s\n' "$?"` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

