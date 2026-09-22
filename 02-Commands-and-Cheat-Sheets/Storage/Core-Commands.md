# Storage: Core Commands

This reference explains the primary commands for storage. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `lsblk` | Display block devices and relationships. | `lsblk -o NAME,TYPE,FSTYPE,SIZE,MOUNTPOINTS,UUID` |
| `blkid` | Display filesystem types and identifiers. | `sudo blkid` |
| `findmnt` | Inspect the mount table. | `findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS` |
| `mount` | Mount a filesystem. | `sudo mount /dev/sdb1 /mnt/data` |
| `umount` | Unmount a filesystem. | `sudo umount /mnt/data` |
| `df` | Report filesystem capacity and inode usage. | `df -hT && df -ih` |
| `du` | Estimate directory and file usage. | `du -xhd1 /var | sort -h` |
| `fdisk` | Inspect or edit partition tables. Writes are destructive. | `sudo fdisk -l` |
| `parted` | Inspect or edit partition tables. | `sudo parted -l` |
| `mkfs` | Create a filesystem. Erases existing data. | `sudo mkfs.ext4 /dev/sdb1` |
| `fsck` | Check and repair an unmounted filesystem. | `sudo fsck -f /dev/sdb1` |
| `tune2fs` | Inspect or tune ext filesystems. | `sudo tune2fs -l /dev/sdb1` |
| `xfs_info` | Display XFS geometry and features. | `xfs_info /mountpoint` |
| `pvs` | Report LVM physical volumes. | `sudo pvs` |
| `vgs` | Report LVM volume groups. | `sudo vgs` |
| `lvs` | Report LVM logical volumes. | `sudo lvs -a -o +devices` |
| `lvextend` | Extend an LVM logical volume. | `sudo lvextend -r -L +10G /dev/vg/data` |
| `mkswap` | Create swap space. | `sudo mkswap /dev/sdb2` |
| `swapon` | Enable or list swap. | `swapon --show` |
| `smartctl` | Inspect drive health when smartmontools is installed. | `sudo smartctl -a /dev/sda` |
| `iostat` | Report device performance when sysstat is installed. | `iostat -xz 1` |

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

