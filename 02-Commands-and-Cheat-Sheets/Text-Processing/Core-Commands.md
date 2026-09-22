# Text Processing: Core Commands

This reference explains the primary commands for text processing. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `cat` | Write files to standard output or concatenate them. | `cat file1 file2` |
| `less` | Page through large text safely. | `less +F /var/log/syslog` |
| `head` | Show the first lines or bytes. | `head -n 20 file` |
| `tail` | Show the last lines and optionally follow growth. | `tail -n 100 -F app.log` |
| `wc` | Count lines, words, or bytes. | `wc -l access.log` |
| `grep` | Search lines using patterns. | `grep -Rni --exclude-dir=.git 'timeout' .` |
| `cut` | Extract delimited fields or character ranges. | `cut -d: -f1 /etc/passwd` |
| `paste` | Merge corresponding lines from files. | `paste names.txt scores.txt` |
| `tr` | Translate, squeeze, or delete characters. | `tr '[:lower:]' '[:upper:]' < names.txt` |
| `sort` | Sort lines by text, number, key, or version. | `sort -t, -k3,3n data.csv` |
| `uniq` | Collapse or count adjacent duplicate lines. | `sort events.txt | uniq -c` |
| `sed` | Apply stream-oriented substitutions and edits. | `sed 's/error/ERROR/g' app.log` |
| `awk` | Process records and fields with conditions and calculations. | `awk '$5 >= 500 {print $1,$7}' access.log` |
| `xargs` | Build command arguments from standard input. | `find . -name '*.tmp' -print0 | xargs -0 -r rm --` |
| `tee` | Copy a stream to output and one or more files. | `command | tee run.log` |
| `diff` | Compare files line by line. | `diff -u old.conf new.conf` |
| `comm` | Compare two sorted files in three columns. | `comm -12 <(sort a) <(sort b)` |
| `join` | Join sorted files using a common field. | `join -1 1 -2 1 users teams` |
| `split` | Divide a file into smaller pieces. | `split -b 100M image.bin image.part.` |
| `printf` | Produce predictable formatted output. | `printf '%s\n' "$value"` |

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

