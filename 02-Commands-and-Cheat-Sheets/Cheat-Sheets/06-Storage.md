# Storage Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| Block layout | `lsblk -o NAME,TYPE,FSTYPE,SIZE,MOUNTPOINTS,UUID` |
| Filesystem IDs | `sudo blkid` |
| Mount table | `findmnt` |
| Validate fstab | `findmnt --verify` |
| Space | `df -hT` |
| Inodes | `df -ih` |
| Directory usage | `du -xhd1 PATH | sort -h` |
| Deleted-open files | `sudo lsof +L1` |
| Mount | `sudo mount DEVICE MOUNTPOINT` |
| Unmount | `sudo umount MOUNTPOINT` |
| LVM physical volumes | `sudo pvs` |
| LVM groups | `sudo vgs` |
| LVM logical volumes | `sudo lvs -a -o +devices` |
| Swap | `swapon --show` |
| Drive health | `sudo smartctl -a DEVICE` |
| Device latency | `iostat -xz 1` |
| Read-only filesystem check | `findmnt -no OPTIONS MOUNTPOINT` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

