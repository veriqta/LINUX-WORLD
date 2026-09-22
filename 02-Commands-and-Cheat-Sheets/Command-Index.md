# Linux Command Index

Use this index to find the correct topic. Compound entries such as `systemctl status` are indexed under their main command.

## A to Z

| Command | Primary purpose | Detailed section |
| --- | --- | --- |
| `apt`, `apt-cache` | Debian-family packages | [Package Management](Package-Management/Core-Commands.md) |
| `ausearch`, `aureport`, `auditctl` | Audit records and rules | [Security](Security/Core-Commands.md) |
| `awk` | Field-based text processing | [Text Processing](Text-Processing/Core-Commands.md) |
| `basename`, `dirname`, `realpath` | Path components and resolution | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `bg`, `fg`, `jobs`, `disown` | Shell job control | [Processes](Processes/Core-Commands.md) |
| `blkid`, `lsblk` | Block device discovery | [Storage](Storage/Core-Commands.md) |
| `cat`, `head`, `tail`, `less` | Read text | [Text Processing](Text-Processing/Core-Commands.md) |
| `cd`, `pwd`, `ls` | Filesystem navigation | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `chage`, `passwd` | Password and account aging | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `chmod`, `chown`, `chgrp` | Modes and ownership | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `comm`, `diff`, `join` | Compare or combine records | [Text Processing](Text-Processing/Core-Commands.md) |
| `cp`, `mv`, `rm`, `mkdir` | Manage paths | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `curl`, `wget` | HTTP requests and downloads | [Networking](Networking/Core-Commands.md) |
| `cut`, `paste`, `tr` | Select or transform text | [Text Processing](Text-Processing/Core-Commands.md) |
| `df`, `du` | Capacity and usage | [Storage](Storage/Core-Commands.md) |
| `dig`, `host`, `resolvectl` | DNS diagnosis | [Networking](Networking/Core-Commands.md) |
| `dmesg` | Kernel messages | [Logs](Logs/Core-Commands.md) |
| `dnf`, `rpm` | RPM-family packages | [Package Management](Package-Management/Core-Commands.md) |
| `ethtool` | Network interface properties and counters | [Networking](Networking/Core-Commands.md) |
| `fdisk`, `parted` | Partition inspection and editing | [Storage](Storage/Core-Commands.md) |
| `file`, `stat` | File type and metadata | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `find`, `locate` | Locate paths | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `findmnt`, `mount`, `umount` | Mount inspection and control | [Storage](Storage/Core-Commands.md) |
| `free`, `vmstat` | Memory and system activity | [Performance](Performance/Core-Commands.md) |
| `fsck`, `xfs_repair` | Filesystem checking and repair | [Emergency Recovery](Emergency-Recovery/Core-Commands.md) |
| `getent`, `id`, `whoami` | Identity inspection | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `getfacl`, `setfacl` | POSIX ACLs | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `grep`, `zgrep` | Pattern search | [Text Processing](Text-Processing/Core-Commands.md) |
| `groupadd`, `groupmod`, `groupdel` | Group management | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `ip` | Interfaces, addresses, routes, and neighbors | [Networking](Networking/Core-Commands.md) |
| `iostat`, `pidstat`, `mpstat`, `sar` | Performance sampling | [Performance](Performance/Core-Commands.md) |
| `journalctl` | systemd journal queries | [Logs](Logs/Core-Commands.md) |
| `kill`, `pkill`, `killall` | Process signals | [Processes](Processes/Core-Commands.md) |
| `ln`, `readlink` | Hard and symbolic links | [Files and Directories](Files-and-Directories/Core-Commands.md) |
| `logger`, `logrotate` | Logging tests and rotation | [Logs](Logs/Core-Commands.md) |
| `lsof`, `fuser` | Open files, sockets, and users | [Processes](Processes/Core-Commands.md) |
| `lvs`, `vgs`, `pvs`, `lvextend` | LVM | [Storage](Storage/Core-Commands.md) |
| `nc`, `ss` | Port and socket testing | [Networking](Networking/Core-Commands.md) |
| `nice`, `renice` | Process priority | [Processes](Processes/Core-Commands.md) |
| `nft`, `ufw`, `firewall-cmd` | Host firewall policy | [Security](Security/Core-Commands.md) |
| `openssl` | TLS and certificate inspection | [Security](Security/Core-Commands.md) |
| `perf`, `strace`, `time` | Profiling and tracing | [Performance](Performance/Core-Commands.md) |
| `pgrep`, `pidof`, `ps`, `pstree` | Process discovery | [Processes](Processes/Core-Commands.md) |
| `ping`, `tracepath`, `traceroute` | Reachability and routed path | [Networking](Networking/Core-Commands.md) |
| `rsync`, `scp`, `ssh` | Remote access and data transfer | [Networking](Networking/Core-Commands.md) |
| `sed` | Stream editing | [Text Processing](Text-Processing/Core-Commands.md) |
| `sha256sum`, `gpg` | Integrity and signature verification | [Security](Security/Core-Commands.md) |
| `sort`, `uniq`, `wc` | Sort, deduplicate, and count | [Text Processing](Text-Processing/Core-Commands.md) |
| `ssh-keygen`, `ssh-copy-id`, `sshd -t` | SSH keys and server validation | [Security](Security/Core-Commands.md) |
| `systemctl`, `systemd-analyze` | Services and boot | [systemd and Services](Systemd-and-Services/Core-Commands.md) |
| `tcpdump` | Packet capture | [Networking](Networking/Core-Commands.md) |
| `top`, `uptime`, `watch` | Live activity and repeated inspection | [Performance](Performance/Core-Commands.md) |
| `useradd`, `usermod`, `userdel` | User management | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |
| `visudo`, `sudo`, `su` | Privileged execution | [Users and Permissions](Users-and-Permissions/Core-Commands.md) |

## Find commands by task

| Task | Start with |
| --- | --- |
| A service will not start | `systemctl status`, `journalctl -u`, configuration validator |
| A port is unavailable | `ss -lntup`, `lsof -i`, `nc -vz` |
| DNS is failing | `resolvectl status`, `dig`, `host` |
| Disk is full | `df -hT`, `df -ih`, `du -xhd1`, `lsof +L1` |
| A process consumes CPU | `ps`, `top`, `pidstat`, `perf` |
| Memory pressure occurs | `free`, `vmstat`, PSI files, `journalctl -k` |
| Access is denied | `id`, `namei -l`, `getfacl`, audit logs |
| A package update failed | native package history, repository configuration, logs |
| A filesystem will not mount | `lsblk -f`, `blkid`, `findmnt --verify`, kernel logs |
| SSH is unavailable | `ss`, `systemctl status sshd`, `sshd -t`, firewall, logs |
| Boot failed | console, `journalctl -xb`, failed units, fstab, filesystem, bootloader |
| Logs are too large | `du`, `lsof +L1`, `logrotate -d`, service logging configuration |

