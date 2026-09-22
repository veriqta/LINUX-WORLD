# Logs Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Current boot | `journalctl -b` |
| Current boot warnings | `journalctl -b -p warning..alert` |
| Kernel messages | `journalctl -k -b` |
| Unit logs | `journalctl -u UNIT --since '1 hour ago'` |
| Follow unit | `journalctl -fu UNIT` |
| Specific PID | `journalctl _PID=PID` |
| Time range | `journalctl --since '2026-01-01 10:00' --until '2026-01-01 11:00'` |
| Journal storage | `journalctl --disk-usage` |
| Follow file | `tail -F FILE` |
| Search compressed logs | `zgrep -h 'PATTERN' FILE*.gz` |
| Count patterns | `grep -Eo 'PATTERN' FILE | sort | uniq -c | sort -nr` |
| Write test message | `logger -t test-tag 'message'` |
| Test rotation config | `sudo logrotate -d /etc/logrotate.conf` |
| Login history | `last -F` |
| Audit search | `sudo ausearch -ts today` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

