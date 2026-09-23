# F

Linux and system-administration terms beginning with F.

## File descriptor

**Definition:** A per-process integer reference to an open file, socket, pipe, or similar object.

**Why it matters:** Leaks and limits can cause service failures.

**Inspect safely:**

```bash
ls -l /proc/PID/fd; cat /proc/PID/limits
```

**Common confusion:** A descriptor is not the same as a pathname.

## FHS

**Definition:** Filesystem Hierarchy Standard, a specification for common directory purposes on Unix-like systems.

**Why it matters:** It helps administrators locate configurations, variable data, programs, and logs.

**Inspect safely:**

```bash
man 7 hier
```

**Common confusion:** Distributions may extend or differ from the standard.

## Filesystem

**Definition:** A structure and implementation used to name, store, retrieve, and protect data.

**Why it matters:** Filesystem state affects durability, permissions, capacity, and recovery.

**Inspect safely:**

```bash
findmnt; df -T
```

**Common confusion:** A filesystem is not synonymous with a physical disk.

## Firewall

**Definition:** A control that permits, rejects, or drops network traffic according to policy.

**Why it matters:** Host firewalls reduce exposed attack surface.

**Inspect safely:**

```bash
nft list ruleset 2>/dev/null
```

**Common confusion:** An open port shown by a socket tool does not prove the firewall permits remote traffic.
