# Man Pages and Info Pages

## Manual sections

| Section | Content |
| ---: | --- |
| 1 | User commands |
| 2 | System calls |
| 3 | Library functions |
| 4 | Devices and special files |
| 5 | File formats and configuration files |
| 6 | Games |
| 7 | Conventions and overviews |
| 8 | Administration commands |

Use a section to resolve ambiguity, for example `man 5 passwd` for the file format and `man 1 passwd` for the command.

## Navigation

Inside `man`, use `/pattern`, `n`, `N`, `g`, `G`, and `q`. Use `man -f` for a short description and `man -k` for keyword search.

## Info

GNU Info documents can contain fuller manuals than man pages. Run `info coreutils`, use `m` to select a menu, `n` and `p` for nodes, and `q` to exit.

## Verification habit

Read synopsis syntax carefully, distinguish mandatory from optional arguments, inspect exit status, and test examples with harmless data.
