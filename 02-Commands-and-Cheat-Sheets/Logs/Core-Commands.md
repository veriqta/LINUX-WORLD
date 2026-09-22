# Logs: Core Commands

This reference explains the primary commands for logs. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `journalctl -b` | Show messages from the current boot. | `journalctl -b -p warning..alert` |
| `journalctl -u` | Show messages for a unit. | `journalctl -u ssh --since today` |
| `journalctl -k` | Show kernel messages. | `journalctl -k -b` |
| `journalctl -f` | Follow new journal messages. | `journalctl -fu nginx` |
| `journalctl disk usage` | Inspect journal storage. | `journalctl --disk-usage` |
| `dmesg` | Read the kernel ring buffer. | `sudo dmesg --level=err,warn` |
| `tail -F` | Follow a log across rotation. | `tail -F /var/log/app.log` |
| `grep` | Filter logs for patterns. | `grep -Ei 'error|fail|timeout' app.log` |
| `zgrep` | Search compressed log files. | `zgrep -h 'ERROR' /var/log/app.log*.gz` |
| `awk` | Aggregate structured text logs. | `awk '{count[$9]++} END {for (k in count) print k,count[k]}' access.log` |
| `logger` | Write a test message to the logging system. | `logger -t linux-world 'test message'` |
| `logrotate` | Rotate logs according to policy. | `sudo logrotate -d /etc/logrotate.conf` |
| `last` | Read login records. | `last -F` |
| `lastlog` | Show the most recent login for accounts. | `lastlog` |
| `utmpdump` | Inspect utmp or wtmp data when available. | `utmpdump /var/log/wtmp` |
| `ausearch` | Search audit logs. | `sudo ausearch -ts recent -m AVC,USER_LOGIN` |
| `multitail` | Follow multiple files when installed. | `multitail app.log worker.log` |
| `lnav` | Interactively explore logs when installed. | `lnav /var/log/syslog` |

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

