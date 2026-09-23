# O

Linux and system-administration terms beginning with O.

## OOM killer

**Definition:** Kernel logic that selects processes for termination when memory cannot be reclaimed sufficiently.

**Why it matters:** It can cause sudden service loss during severe memory pressure.

**Inspect safely:**

```bash
journalctl -k -g 'Out of memory|Killed process'
```

**Common confusion:** The killed process may be a victim rather than the cause.

## Open file table

**Definition:** Kernel structures that track open file descriptions shared or referenced by descriptors.

**Why it matters:** Offsets and status flags may be shared after duplication or fork.

**Inspect safely:**

```bash
ls -l /proc/PID/fd
```

**Common confusion:** A file descriptor number is local to one process.

## Overlay filesystem

**Definition:** A layered filesystem view combining lower and upper directories.

**Why it matters:** Container image layers commonly use overlay filesystems.

**Inspect safely:**

```bash
findmnt -t overlay
```

**Common confusion:** Deleting in an upper layer may create a whiteout rather than alter the lower layer.
