# systemd and Services: Core Commands

This reference explains the primary commands for systemd and services. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `systemctl status` | Show unit state and recent messages. | `systemctl status nginx --no-pager` |
| `systemctl start` | Start a unit now. | `sudo systemctl start nginx` |
| `systemctl stop` | Stop a unit now. | `sudo systemctl stop nginx` |
| `systemctl restart` | Stop and start a unit. | `sudo systemctl restart nginx` |
| `systemctl reload` | Reload configuration without a full restart when supported. | `sudo systemctl reload nginx` |
| `systemctl enable` | Configure a unit to start at boot. | `sudo systemctl enable nginx` |
| `systemctl disable` | Remove boot-time enablement. | `sudo systemctl disable nginx` |
| `systemctl is-active` | Return whether a unit is active. | `systemctl is-active --quiet nginx` |
| `systemctl is-enabled` | Return whether a unit is enabled. | `systemctl is-enabled nginx` |
| `systemctl list-units` | List loaded units. | `systemctl list-units --type=service --state=failed` |
| `systemctl list-unit-files` | List installed unit files and enablement. | `systemctl list-unit-files --type=service` |
| `systemctl cat` | Show the effective unit definition and drop-ins. | `systemctl cat nginx` |
| `systemctl edit` | Create a safe override drop-in. | `sudo systemctl edit nginx` |
| `systemctl daemon-reload` | Reload unit definitions after changes. | `sudo systemctl daemon-reload` |
| `systemctl show` | Display machine-readable unit properties. | `systemctl show nginx -p MainPID -p ActiveState` |
| `systemctl list-dependencies` | Show dependency relationships. | `systemctl list-dependencies nginx` |
| `systemd-analyze` | Inspect boot duration. | `systemd-analyze blame` |
| `journalctl` | Query the systemd journal. | `journalctl -u nginx --since '1 hour ago'` |
| `loginctl` | Inspect sessions and logged-in users. | `loginctl list-sessions` |
| `hostnamectl` | Inspect or set system hostname metadata. | `hostnamectl status` |
| `timedatectl` | Inspect or configure time settings. | `timedatectl status` |

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

