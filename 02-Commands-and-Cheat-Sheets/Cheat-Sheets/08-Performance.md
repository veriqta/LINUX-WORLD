# Performance Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Uptime and load | `uptime` |
| Memory | `free -h` |
| System sampling | `vmstat 1 10` |
| Per-CPU | `mpstat -P ALL 1` |
| Per-process | `pidstat -dur 1` |
| Device I/O | `iostat -xz 1` |
| Pressure stall | `cat /proc/pressure/{cpu,memory,io}` |
| Top CPU | `ps -eo pid,user,%cpu,%mem,stat,cmd --sort=-%cpu | head` |
| Top memory | `ps -eo pid,user,%mem,rss,cmd --sort=-%mem | head` |
| Network counters | `nstat -az` |
| NIC counters | `sudo ethtool -S INTERFACE` |
| Command resources | `/usr/bin/time -v COMMAND` |
| System call summary | `sudo strace -c -p PID` |
| Resource limits | `ulimit -a` |
| OOM events | `journalctl -k -g 'oom|Out of memory'` |
| Historical CPU | `sar -u` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

