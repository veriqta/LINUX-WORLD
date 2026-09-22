# Emergency Recovery: Core Commands

This reference explains the primary commands for emergency recovery. Examples are starting points. Read the manual page and verify assumptions before production use.

## Quick reference

| Command | Purpose | Example |
| --- | --- | --- |
| `systemctl rescue` | Enter rescue mode on a running system. | `sudo systemctl rescue` |
| `systemctl emergency` | Enter emergency mode with minimal services. | `sudo systemctl emergency` |
| `journalctl -xb` | Inspect the current boot with explanations. | `journalctl -xb -p warning..alert` |
| `systemctl --failed` | List failed units. | `systemctl --failed` |
| `dmesg` | Inspect recent kernel and hardware messages. | `sudo dmesg -T | tail -n 100` |
| `lsblk` | Map disks, partitions, and mountpoints. | `lsblk -f` |
| `findmnt` | Verify actual mounts and options. | `findmnt --verify` |
| `mount -o remount` | Change mount options on an existing mount. | `sudo mount -o remount,rw /` |
| `fsck` | Check an unmounted filesystem. | `sudo fsck -f /dev/DEVICE` |
| `xfs_repair` | Repair an unmounted XFS filesystem. | `sudo xfs_repair -n /dev/DEVICE` |
| `df` | Check capacity and inode exhaustion. | `df -hT; df -ih` |
| `du` | Locate major disk consumers. | `sudo du -xhd1 /var | sort -h` |
| `lsof +L1` | Find deleted files still held open. | `sudo lsof +L1` |
| `chroot` | Run commands with another root filesystem. | `sudo chroot /mnt/root /bin/bash` |
| `grub-install` | Reinstall GRUB to a target disk. | `sudo grub-install /dev/sdX` |
| `update-grub` | Regenerate GRUB configuration on Debian-family systems. | `sudo update-grub` |
| `grub2-mkconfig` | Regenerate GRUB configuration on common RPM-family systems. | `sudo grub2-mkconfig -o /boot/grub2/grub.cfg` |
| `passwd` | Reset an account password from an authorized recovery environment. | `passwd username` |
| `sshd -t` | Validate SSH configuration before restart. | `sudo sshd -t` |
| `restorecon` | Restore SELinux file contexts. | `sudo restorecon -Rv /path` |

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

