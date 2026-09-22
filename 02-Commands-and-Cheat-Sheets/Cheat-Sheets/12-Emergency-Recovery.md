# Emergency Recovery Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Failed units | `systemctl --failed` |
| Emergency boot journal | `journalctl -xb` |
| Disks and filesystems | `lsblk -f` |
| Mounted state | `findmnt` |
| Validate fstab | `findmnt --verify` |
| Capacity and inodes | `df -hT; df -ih` |
| Largest top-level paths | `sudo du -xhd1 / | sort -h` |
| Deleted-open files | `sudo lsof +L1` |
| Validate SSH config | `sudo sshd -t` |
| Kernel errors | `journalctl -k -b -p err..alert` |
| Enter rescue mode | `sudo systemctl rescue` |
| Remount root read-write | `sudo mount -o remount,rw /` |
| Filesystem check | `sudo fsck -f DEVICE` |
| XFS no-modify check | `sudo xfs_repair -n DEVICE` |
| Restore SELinux labels | `sudo restorecon -Rv PATH` |
| Recovery warning | `Never run repair or formatting commands until DEVICE and backup status are confirmed.` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

