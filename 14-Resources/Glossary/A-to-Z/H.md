# H

Linux and system-administration terms beginning with H.

## Hard link

**Definition:** Another directory entry referencing the same inode within a filesystem.

**Why it matters:** Hard links affect deletion semantics and backup interpretation.

**Inspect safely:**

```bash
ls -li FILE; stat FILE
```

**Common confusion:** A hard link is not a shortcut and normally cannot cross filesystems.

## Hostname

**Definition:** A system's configured name, used for identification and often name resolution.

**Why it matters:** Incorrect host naming can affect automation, certificates, and operations.

**Inspect safely:**

```bash
hostnamectl; hostname -f 2>/dev/null
```

**Common confusion:** A hostname does not guarantee a corresponding DNS record.

## Huge page

**Definition:** A memory page larger than the normal base page size.

**Why it matters:** Huge pages can reduce translation overhead for some workloads.

**Inspect safely:**

```bash
grep -i huge /proc/meminfo
```

**Common confusion:** Transparent Huge Pages and explicitly reserved huge pages are different mechanisms.
