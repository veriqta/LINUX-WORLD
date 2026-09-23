# U

Linux and system-administration terms beginning with U.

## UID

**Definition:** User identifier, the numeric identity the kernel uses for ownership and access decisions.

**Why it matters:** Name-service failures can reveal numeric IDs without changing ownership.

**Inspect safely:**

```bash
id USER; getent passwd USER
```

**Common confusion:** A username is a mapping to a UID, not the kernel identity itself.

## Umask

**Definition:** A process setting that removes permission bits from modes requested for new files and directories.

**Why it matters:** It influences default permissions.

**Inspect safely:**

```bash
umask; umask -S
```

**Common confusion:** Umask does not change existing objects and does not directly specify final permissions.

## Unit

**Definition:** A resource managed by systemd, such as a service, socket, mount, timer, target, or path.

**Why it matters:** Understanding unit state and dependencies is essential for administration.

**Inspect safely:**

```bash
systemctl list-units; systemctl cat NAME
```

**Common confusion:** Not every unit is a service.

## Userspace

**Definition:** Memory and execution outside the kernel's privileged core.

**Why it matters:** Applications, shells, libraries, and most services run in userspace.

**Inspect safely:**

```bash
ps -ef
```

**Common confusion:** Userspace and kernel space describe privilege and address-space domains, not user accounts.
