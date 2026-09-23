# V

Linux and system-administration terms beginning with V.

## VFS

**Definition:** Virtual Filesystem, the kernel abstraction that provides common file operations across filesystem implementations.

**Why it matters:** It explains how one interface works across ext4, XFS, tmpfs, and others.

**Inspect safely:**

```bash
cat /proc/filesystems
```

**Common confusion:** VFS is not a filesystem stored on disk.

## Virtual memory

**Definition:** The address-space abstraction that maps process addresses to physical memory, files, swap, or no current page.

**Why it matters:** It enables isolation, mapping, caching, and controlled allocation.

**Inspect safely:**

```bash
pmap -x PID; cat /proc/PID/maps
```

**Common confusion:** Virtual address size is not physical RAM consumption.

## Volume group

**Definition:** An LVM storage pool built from physical volumes and used to allocate logical volumes.

**Why it matters:** Free extents in the group determine expansion capacity.

**Inspect safely:**

```bash
vgs; vgdisplay
```

**Common confusion:** Free space inside a filesystem differs from free extents in a volume group.
