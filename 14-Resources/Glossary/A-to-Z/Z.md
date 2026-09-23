# Z

Linux and system-administration terms beginning with Z.

## Zombie process

**Definition:** A terminated process whose parent has not yet collected its exit status.

**Why it matters:** Large or persistent zombie counts suggest parent-process defects.

**Inspect safely:**

```bash
ps -eo pid,ppid,state,comm | awk '$3 ~ /Z/'
```

**Common confusion:** A zombie consumes a process-table entry, not normal running CPU or memory.

## Zone

**Definition:** A firewalld policy grouping interfaces or sources by trust and permitted services.

**Why it matters:** Wrong zone assignment can unintentionally expose or block services.

**Inspect safely:**

```bash
firewall-cmd --get-active-zones 2>/dev/null
```

**Common confusion:** A firewalld zone is not the same as a DNS zone.

## ZRAM

**Definition:** A compressed RAM-backed block device commonly used for swap.

**Why it matters:** It trades CPU work for reduced physical memory pressure.

**Inspect safely:**

```bash
zramctl 2>/dev/null; swapon --show
```

**Common confusion:** ZRAM is not persistent storage.
