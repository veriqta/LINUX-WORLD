# C

Linux and system-administration terms beginning with C.

## Capability

**Definition:** A fine-grained kernel privilege split from the traditional all-powerful root privilege.

**Why it matters:** Capabilities can reduce the privileges granted to a process.

**Inspect safely:**

```bash
getpcaps PID; capsh --print
```

**Common confusion:** Capabilities do not automatically make a process safe.

## Cgroup

**Definition:** A kernel mechanism for organizing processes and controlling or accounting for resources.

**Why it matters:** systemd and container runtimes use cgroups extensively.

**Inspect safely:**

```bash
systemd-cgls; cat /proc/self/cgroup
```

**Common confusion:** A cgroup is resource control, while a namespace primarily provides isolation.

## Chroot

**Definition:** A process operation that changes the apparent filesystem root.

**Why it matters:** It supports packaging, recovery, and limited isolation workflows.

**Inspect safely:**

```bash
readlink /proc/$$/root
```

**Common confusion:** chroot alone is not a security boundary.

## CIDR

**Definition:** Classless Inter-Domain Routing notation for an address prefix such as 192.0.2.0/24.

**Why it matters:** It defines network ranges and routing prefixes.

**Inspect safely:**

```bash
ip route show
```

**Common confusion:** The suffix is a prefix length, not a host count.

## Cron

**Definition:** A time-based job scheduler used by cron implementations.

**Why it matters:** It runs recurring administrative tasks.

**Inspect safely:**

```bash
systemctl status cron 2>/dev/null || systemctl status crond
```

**Common confusion:** Cron and systemd timers have different execution environments and features.
