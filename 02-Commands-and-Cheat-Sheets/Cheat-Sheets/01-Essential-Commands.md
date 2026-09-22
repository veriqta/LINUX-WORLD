# Essential Commands Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Where am I? | `pwd` |
| Who am I? | `id` |
| Which host? | `hostname` |
| List files | `ls -lah` |
| Change directory | `cd PATH` |
| Create directory | `mkdir -p PATH` |
| Copy safely | `cp -a SOURCE DESTINATION` |
| Move or rename | `mv SOURCE DESTINATION` |
| Inspect a file | `file FILE; stat FILE` |
| Read a file | `less FILE` |
| Search text | `grep -Rni 'PATTERN' PATH` |
| Find a file | `find PATH -type f -name 'PATTERN' -print` |
| Disk capacity | `df -hT` |
| Directory usage | `du -xhd1 PATH | sort -h` |
| Process snapshot | `ps -ef` |
| Listening ports | `ss -lntup` |
| Service status | `systemctl status UNIT --no-pager` |
| Recent service logs | `journalctl -u UNIT -n 100 --no-pager` |
| Manual | `man COMMAND` |
| Exit status | `printf '%s\n' "$?"` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

