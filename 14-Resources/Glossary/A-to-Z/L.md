# L

Linux and system-administration terms beginning with L.

## Load average

**Definition:** The average number of runnable tasks and tasks in uninterruptible sleep over time.

**Why it matters:** It helps identify demand and blocking but requires context.

**Inspect safely:**

```bash
uptime; cat /proc/loadavg
```

**Common confusion:** Load average is not CPU utilization and is not directly comparable across CPU counts.

## Logical volume

**Definition:** A device-mapper block device allocated from an LVM volume group.

**Why it matters:** It provides flexible storage allocation and snapshots.

**Inspect safely:**

```bash
lvs -a -o +devices
```

**Common confusion:** A logical volume is not automatically a filesystem.

## Loop device

**Definition:** A block-device interface backed by a regular file.

**Why it matters:** It supports images, packages, and lab filesystems.

**Inspect safely:**

```bash
losetup --list
```

**Common confusion:** Detaching an in-use loop device can corrupt access.

## LVM

**Definition:** Logical Volume Manager, a storage abstraction using physical volumes, volume groups, and logical volumes.

**Why it matters:** It supports flexible allocation and some snapshot workflows.

**Inspect safely:**

```bash
pvs; vgs; lvs
```

**Common confusion:** LVM does not replace backups or filesystems.
