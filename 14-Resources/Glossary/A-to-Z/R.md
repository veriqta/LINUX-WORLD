# R

Linux and system-administration terms beginning with R.

## RAID

**Definition:** A method of combining storage devices for performance, availability, or both.

**Why it matters:** RAID layout affects failure tolerance and recovery.

**Inspect safely:**

```bash
cat /proc/mdstat; mdadm --detail --scan 2>/dev/null
```

**Common confusion:** RAID is not a backup.

## RHEL

**Definition:** Red Hat Enterprise Linux, a commercially supported enterprise Linux distribution.

**Why it matters:** Its lifecycle, tools, and certification ecosystem are common in enterprises.

**Inspect safely:**

```bash
cat /etc/redhat-release 2>/dev/null
```

**Common confusion:** RHEL is related to but not identical with Fedora or rebuild distributions.

## Root

**Definition:** The account with UID 0 and traditionally broad privilege.

**Why it matters:** Unnecessary root use greatly increases impact from mistakes or compromise.

**Inspect safely:**

```bash
id root
```

**Common confusion:** The filesystem root directory `/` is not the root account.

## Route

**Definition:** A rule used to select a next hop, interface, or local destination for packets.

**Why it matters:** Incorrect routes cause reachability and asymmetric-path failures.

**Inspect safely:**

```bash
ip route show; ip -6 route show
```

**Common confusion:** A default route does not guarantee DNS or application success.

## RPO

**Definition:** Recovery Point Objective, the maximum acceptable age of recovered data after disruption.

**Why it matters:** It determines backup, replication, and restore-point requirements.

**Inspect safely:**

```bash
printf '%s
' 'Check the documented recovery objective and last verified backup timestamp'
```

**Common confusion:** RPO measures tolerated data loss in time, not restoration duration.

## RTO

**Definition:** Recovery Time Objective, the target time for restoring a service after disruption.

**Why it matters:** It shapes recovery architecture, staffing, automation, and testing.

**Inspect safely:**

```bash
printf '%s
' 'Compare the documented objective with timed recovery-test evidence'
```

**Common confusion:** RTO is a target, not a guarantee, and differs from RPO.

## Runlevel

**Definition:** A historical SysV init operating mode represented by a number.

**Why it matters:** It appears in legacy procedures and compatibility mappings.

**Inspect safely:**

```bash
systemctl get-default
```

**Common confusion:** systemd targets are not exact one-to-one replacements for every runlevel behavior.
