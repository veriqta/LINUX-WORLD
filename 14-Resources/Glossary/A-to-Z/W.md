# W

Linux and system-administration terms beginning with W.

## Writeback

**Definition:** The process of flushing modified cached data to backing storage.

**Why it matters:** Writeback pressure and latency affect application durability and performance.

**Inspect safely:**

```bash
grep -E 'Dirty|Writeback' /proc/meminfo
```

**Common confusion:** A successful write call does not always mean data is already on persistent media.

## Working directory

**Definition:** The directory used to resolve relative paths for a process.

**Why it matters:** Wrong working directories cause scripts to read or modify unintended files.

**Inspect safely:**

```bash
pwd; readlink /proc/PID/cwd
```

**Common confusion:** A process working directory can differ from the shell that launched it.

## World-writable

**Definition:** A permission state allowing users outside the owner and group classes to write.

**Why it matters:** It can create security risks unless protected by design, such as a sticky directory.

**Inspect safely:**

```bash
find PATH -xdev -type d -perm -0002 -print
```

**Common confusion:** World-writable does not always mean vulnerable; context and sticky-bit behavior matter.
