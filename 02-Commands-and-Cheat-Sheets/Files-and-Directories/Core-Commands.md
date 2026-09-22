# Files and Directories: Core Commands

This reference explains the primary commands for files and directories. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `pwd` | Print the absolute path of the current directory. | `pwd` |
| `ls` | List directory contents. | `ls -lah --group-directories-first` |
| `cd` | Change the current shell directory. | `cd /var/log` |
| `mkdir` | Create directories. | `mkdir -p project/{src,tests,docs}` |
| `touch` | Create an empty file or update timestamps. | `touch app.log` |
| `cp` | Copy files or directories. | `cp -a source/ backup/` |
| `mv` | Move or rename a path. | `mv draft.md final.md` |
| `rm` | Remove files or directories. Verify targets first. | `rm -- file.tmp` |
| `rmdir` | Remove empty directories. | `rmdir old-empty-dir` |
| `file` | Identify a file type from its contents. | `file archive.tar.gz` |
| `stat` | Display timestamps, ownership, permissions, and size. | `stat /etc/passwd` |
| `find` | Search directory trees and optionally act on matches. | `find /var/log -type f -name '*.log' -mtime +30 -print` |
| `locate` | Search a prebuilt filename database. | `locate ssh_config` |
| `basename` | Return the final component of a path. | `basename /srv/app/config.yaml` |
| `dirname` | Return the directory component of a path. | `dirname /srv/app/config.yaml` |
| `ln` | Create hard or symbolic links. | `ln -s /opt/app/current app-current` |
| `readlink` | Show a symbolic link target. | `readlink -f app-current` |
| `du` | Report space used by files and directories. | `du -sh /var/log/*` |
| `tree` | Display a directory hierarchy when installed. | `tree -L 2 project` |
| `realpath` | Resolve a canonical absolute path. | `realpath ./config/../app.conf` |

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

