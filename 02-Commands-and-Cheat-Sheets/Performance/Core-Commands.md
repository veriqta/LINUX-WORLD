# Performance: Core Commands

This reference explains the primary commands for performance. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `uptime` | Show load averages and system uptime. | `uptime` |
| `top` | Inspect interactive CPU and memory activity. | `top` |
| `free` | Report memory and swap usage. | `free -h` |
| `vmstat` | Sample processes, memory, paging, I/O, and CPU. | `vmstat 1 10` |
| `mpstat` | Report per-CPU usage. | `mpstat -P ALL 1` |
| `pidstat` | Report per-process CPU, memory, I/O, or context switches. | `pidstat -dur 1` |
| `iostat` | Report device latency, queueing, and utilization. | `iostat -xz 1` |
| `sar` | Read or collect historical system activity. | `sar -u 1 10` |
| `ss` | Summarize sockets. | `ss -s` |
| `nstat` | Display network protocol counters. | `nstat -az` |
| `ethtool -S` | Display NIC driver statistics. | `sudo ethtool -S eth0` |
| `perf stat` | Collect hardware and software counter summaries. | `sudo perf stat -p 1234 sleep 10` |
| `perf top` | Profile hot functions interactively. | `sudo perf top` |
| `strace -c` | Summarize system calls. | `sudo strace -c -p 1234` |
| `time` | Measure command elapsed, user, and system time. | `/usr/bin/time -v command` |
| `ulimit` | Inspect shell resource limits. | `ulimit -a` |
| `numastat` | Inspect NUMA memory allocation when installed. | `numastat -p 1234` |
| `slabtop` | Inspect kernel slab cache usage. | `sudo slabtop` |
| `pressure stall` | Read kernel pressure stall information. | `cat /proc/pressure/{cpu,memory,io}` |
| `turbostat` | Inspect CPU frequency and power data when supported. | `sudo turbostat --Summary --interval 2` |

## Discover syntax safely

Use these methods before relying on an option:

```bash
command --help
man command
type command
command -V command
apropos "search phrase"
```

- `type` shows whether a name resolves to an alias, function, builtin, or executable.
- `command -V` explains how the shell resolves the command.
- `man` provides the installed system's documentation, which is more reliable than syntax remembered from another distribution.
- Exit status `0` normally means success. A nonzero status means failure or a command-specific condition.

```bash
command
status=$?
printf 'exit_status=%s\n' "$status"
```

## Production checklist

Before a state-changing command:

```bash
hostnamectl --static 2>/dev/null || hostname
id
pwd
date --iso-8601=seconds
```

Then:

1. Record the current state.
2. Define the exact target.
3. Use the least privilege required.
4. Test or validate configuration.
5. Apply one controlled change.
6. Verify service health and expected state.
7. Record what changed and how to reverse it.

## Portability notes

Command behavior can differ between GNU, BusyBox, BSD-derived tools, and distribution-specific implementations. Check `--help`, installed manual pages, package documentation, and the target system version. Do not assume examples using GNU-specific options will work unchanged in minimal containers or on non-GNU systems.

