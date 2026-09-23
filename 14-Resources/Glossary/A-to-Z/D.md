# D

Linux and system-administration terms beginning with D.

## Daemon

**Definition:** A long-running background process that provides a service.

**Why it matters:** Most server functions are implemented by daemons.

**Inspect safely:**

```bash
systemctl --type=service --state=running
```

**Common confusion:** A daemon is a process; a systemd service is a management unit.

## Dentry

**Definition:** A kernel Virtual Filesystem object that connects a name to an inode during pathname lookup.

**Why it matters:** Dentry caches influence filesystem lookup performance.

**Inspect safely:**

```bash
grep -E 'dentry|inode' /proc/slabinfo | head
```

**Common confusion:** A dentry is not the file's persistent inode.

## DNS

**Definition:** Domain Name System, the distributed system that maps names to records such as IP addresses.

**Why it matters:** Name-resolution failures often resemble application or network failures.

**Inspect safely:**

```bash
resolvectl status 2>/dev/null; getent hosts example.org
```

**Common confusion:** DNS resolution is not proof that a service is reachable.

## D-state

**Definition:** Uninterruptible sleep, usually while a process waits for kernel I/O.

**Why it matters:** Persistent D-state can indicate storage, filesystem, or device problems.

**Inspect safely:**

```bash
ps -eo pid,state,wchan:32,comm | awk '$2 ~ /D/'
```

**Common confusion:** A D-state process cannot usually be fixed with SIGKILL until the wait completes.
