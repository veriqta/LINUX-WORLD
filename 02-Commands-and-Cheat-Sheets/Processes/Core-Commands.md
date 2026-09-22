# Processes: Core Commands

This reference explains the primary commands for processes. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `ps` | Display process snapshots. | `ps -eo pid,ppid,user,stat,%cpu,%mem,etime,cmd --sort=-%cpu` |
| `pgrep` | Find process IDs by name or attributes. | `pgrep -af nginx` |
| `pidof` | Find PIDs of a named program. | `pidof sshd` |
| `pstree` | Display parent-child relationships. | `pstree -ap` |
| `top` | Monitor processes interactively. | `top` |
| `kill` | Send a signal to a PID. | `kill -TERM 1234` |
| `pkill` | Signal processes selected by name or attributes. | `pkill -TERM -u deploy worker` |
| `killall` | Signal processes by exact program name. | `killall -TERM process-name` |
| `jobs` | List jobs started by the current shell. | `jobs -l` |
| `bg` | Resume a stopped shell job in the background. | `bg %1` |
| `fg` | Bring a shell job to the foreground. | `fg %1` |
| `nohup` | Keep a command running after logout. | `nohup ./task.sh >task.log 2>&1 &` |
| `disown` | Remove a job from the shell job table. | `disown %1` |
| `nice` | Start a process with an adjusted niceness. | `nice -n 10 ./batch.sh` |
| `renice` | Adjust niceness of a running process. | `sudo renice 5 -p 1234` |
| `timeout` | Limit command runtime. | `timeout 30s curl https://example.com` |
| `watch` | Run a command repeatedly and show changes. | `watch -n 2 'ss -s'` |
| `lsof` | List open files and owning processes. | `sudo lsof -iTCP:8080 -sTCP:LISTEN` |
| `fuser` | Identify processes using a file or socket. | `sudo fuser -v /var/log/app.log` |
| `strace` | Trace system calls for diagnosis. | `sudo strace -f -p 1234` |

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

