# Local Linux Documentation

Local documentation often matches the installed software more closely than an unversioned web page.

## Discovery commands

```bash
type -a COMMAND
COMMAND --help
man COMMAND
man -k KEYWORD
apropos KEYWORD
whatis COMMAND
info COMMAND
help BUILTIN
rpm -qd PACKAGE 2>/dev/null
dpkg -L PACKAGE 2>/dev/null | grep -E '/(doc|man)/'
```

## Common locations

- `/usr/share/man`, manual pages
- `/usr/share/info`, GNU Info documents
- `/usr/share/doc`, package documentation and examples
- `/usr/share/licenses`, packaged license texts
- `/etc`, system configuration
- `/proc` and `/sys`, kernel-exposed runtime state and controls

## Safety

Examples under documentation directories may be incomplete templates. Read comments, compare defaults, validate syntax, and use distribution-supported tools before deploying them.
