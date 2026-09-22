# Package Management: Core Commands

This reference explains the primary commands for package management. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `apt update` | Refresh Debian-family package indexes. | `sudo apt update` |
| `apt install` | Install packages and dependencies. | `sudo apt install nginx` |
| `apt upgrade` | Upgrade installed packages without removing packages. | `sudo apt upgrade` |
| `apt full-upgrade` | Upgrade with dependency changes when required. | `sudo apt full-upgrade` |
| `apt remove` | Remove a package but normally retain configuration. | `sudo apt remove nginx` |
| `apt purge` | Remove a package and packaged configuration. | `sudo apt purge nginx` |
| `apt-cache policy` | Show candidate and installed versions. | `apt-cache policy openssl` |
| `dpkg -l` | List Debian packages. | `dpkg -l | grep nginx` |
| `dpkg -S` | Find the package owning a path. | `dpkg -S /usr/bin/ssh` |
| `dnf check-update` | Check RPM-family updates. | `sudo dnf check-update` |
| `dnf install` | Install RPM-family packages. | `sudo dnf install nginx` |
| `dnf upgrade` | Upgrade installed RPM-family packages. | `sudo dnf upgrade` |
| `dnf remove` | Remove RPM-family packages. | `sudo dnf remove nginx` |
| `dnf history` | Inspect and undo package transactions. | `sudo dnf history list` |
| `rpm -qa` | List installed RPM packages. | `rpm -qa | sort` |
| `rpm -qf` | Find the RPM owning a file. | `rpm -qf /usr/bin/ssh` |
| `snap list` | List installed Snap packages. | `snap list` |
| `flatpak list` | List installed Flatpak applications. | `flatpak list` |
| `unattended-upgrade` | Apply configured unattended Debian security updates. | `sudo unattended-upgrade --dry-run` |
| `needs-restarting` | Report processes or reboot needs on supported RPM systems. | `sudo needs-restarting -r` |

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

