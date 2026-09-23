# B

Linux and system-administration terms beginning with B.

## Bash

**Definition:** A widely used GNU command shell and scripting language.

**Why it matters:** Many administration workflows and scripts depend on Bash behavior.

**Inspect safely:**

```bash
bash --version
```

**Common confusion:** Bash is not identical to POSIX sh.

## Bind mount

**Definition:** A second mount view of an existing file or directory tree.

**Why it matters:** Bind mounts are used in containers, chroots, and service isolation.

**Inspect safely:**

```bash
findmnt -o TARGET,SOURCE,FSTYPE,OPTIONS
```

**Common confusion:** A bind mount does not copy the underlying data.

## Block device

**Definition:** A device that transfers addressable blocks, commonly disks and logical volumes.

**Why it matters:** Filesystems and swap are commonly built on block devices.

**Inspect safely:**

```bash
lsblk -f
```

**Common confusion:** A block device is not the same as a mounted filesystem.

## Bootloader

**Definition:** Software that selects and loads an operating-system kernel and initial ramdisk.

**Why it matters:** Bootloader configuration affects recovery and kernel selection.

**Inspect safely:**

```bash
bootctl status 2>/dev/null || grubby --default-kernel 2>/dev/null
```

**Common confusion:** The bootloader runs before systemd.
