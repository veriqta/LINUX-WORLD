# Processes and Services Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Top CPU processes | `ps -eo pid,ppid,user,%cpu,%mem,etime,cmd --sort=-%cpu | head` |
| Find process | `pgrep -af NAME` |
| Process tree | `pstree -ap` |
| Open port owner | `sudo lsof -iTCP:PORT -sTCP:LISTEN` |
| Graceful signal | `kill -TERM PID` |
| Force signal, last resort | `kill -KILL PID` |
| Start service | `sudo systemctl start UNIT` |
| Reload service | `sudo systemctl reload UNIT` |
| Restart service | `sudo systemctl restart UNIT` |
| Enable at boot | `sudo systemctl enable UNIT` |
| Failed units | `systemctl --failed` |
| Effective unit | `systemctl cat UNIT` |
| Unit properties | `systemctl show UNIT -p MainPID -p ActiveState` |
| Service logs | `journalctl -u UNIT -b` |
| Boot duration | `systemd-analyze blame` |
| Background task | `nohup COMMAND >run.log 2>&1 &` |
| Limit runtime | `timeout 30s COMMAND` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

