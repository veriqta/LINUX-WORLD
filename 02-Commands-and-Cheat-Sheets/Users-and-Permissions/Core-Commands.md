# Users and Permissions: Core Commands

This reference explains the primary commands for users and permissions. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `id` | Show user and group identities. | `id deploy` |
| `whoami` | Print the effective username. | `whoami` |
| `who` | Show logged-in sessions. | `who -a` |
| `w` | Show logged-in users and activity. | `w` |
| `getent` | Query system identity databases. | `getent passwd deploy` |
| `useradd` | Create a local user account. | `sudo useradd -m -s /bin/bash deploy` |
| `usermod` | Modify a user account. | `sudo usermod -aG sudo deploy` |
| `userdel` | Delete a local account. | `sudo userdel -r olduser` |
| `passwd` | Set or change a password. | `sudo passwd deploy` |
| `chage` | Inspect or configure password aging. | `sudo chage -l deploy` |
| `groupadd` | Create a local group. | `sudo groupadd appops` |
| `groupmod` | Modify a local group. | `sudo groupmod -n platform appops` |
| `groupdel` | Delete a local group. | `sudo groupdel oldgroup` |
| `chown` | Change file owner and group. | `sudo chown -R deploy:appops /srv/app` |
| `chgrp` | Change group ownership. | `sudo chgrp -R appops /srv/app` |
| `chmod` | Change mode bits. | `chmod 640 app.conf` |
| `umask` | Display or set default permission masking. | `umask 027` |
| `getfacl` | Display POSIX ACLs. | `getfacl /srv/app` |
| `setfacl` | Set POSIX ACLs. | `sudo setfacl -m u:analyst:rX /srv/reports` |
| `sudo` | Run an allowed command with another identity. | `sudo -u postgres psql` |
| `visudo` | Safely validate and edit sudo policy. | `sudo visudo -f /etc/sudoers.d/deploy` |
| `su` | Start a shell as another user. | `sudo su - deploy` |

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

