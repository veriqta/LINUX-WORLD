# X

Linux and system-administration terms beginning with X.

## XFS

**Definition:** A high-performance journaling filesystem widely used on enterprise Linux.

**Why it matters:** Its growth, repair, and allocation behavior differ from ext4.

**Inspect safely:**

```bash
findmnt -t xfs; xfs_info MOUNTPOINT 2>/dev/null
```

**Common confusion:** XFS can grow but does not support in-place shrinking.

## xattr

**Definition:** Extended attributes, named metadata associated with filesystem objects.

**Why it matters:** ACLs, SELinux labels, capabilities, and application metadata may use them.

**Inspect safely:**

```bash
getfattr -d PATH 2>/dev/null
```

**Common confusion:** Extended attributes are separate from ordinary mode bits.
