# M

Linux and system-administration terms beginning with M.

## MAC address

**Definition:** A link-layer interface identifier used on local networks.

**Why it matters:** It participates in Ethernet forwarding and neighbor resolution.

**Inspect safely:**

```bash
ip link show
```

**Common confusion:** MAC addresses are not end-to-end routable addresses.

## MAC policy

**Definition:** Mandatory Access Control policy, such as SELinux or AppArmor, enforced in addition to discretionary permissions.

**Why it matters:** It can deny access even when Unix mode bits permit it.

**Inspect safely:**

```bash
getenforce 2>/dev/null || aa-status 2>/dev/null
```

**Common confusion:** MAC here does not mean Media Access Control.

## Mount

**Definition:** An association that attaches a filesystem or view to a location in a mount namespace.

**Why it matters:** Mount options and namespaces determine visibility and behavior.

**Inspect safely:**

```bash
findmnt
```

**Common confusion:** A directory can exist even when the expected filesystem is not mounted.

## Mutex

**Definition:** A mutual-exclusion synchronization primitive.

**Why it matters:** Lock contention can reduce performance or cause stalls.

**Inspect safely:**

```bash
perf lock report 2>/dev/null
```

**Common confusion:** A mutex and a spinlock wait differently.
