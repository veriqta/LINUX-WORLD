# K

Linux and system-administration terms beginning with K.

## Kernel

**Definition:** The privileged core that manages hardware, memory, scheduling, filesystems, networking, and system calls.

**Why it matters:** Most system behavior crosses the kernel boundary.

**Inspect safely:**

```bash
uname -a; cat /proc/version
```

**Common confusion:** Linux commonly refers to the kernel, while a distribution includes much more.

## Kernel module

**Definition:** Loadable kernel code that extends functionality, often for drivers or filesystems.

**Why it matters:** Module state affects hardware and kernel capabilities.

**Inspect safely:**

```bash
lsmod; modinfo MODULE
```

**Common confusion:** Unloading a module can disrupt devices and services.

## Kdump

**Definition:** A crash-dump mechanism that boots a reserved capture kernel after a kernel crash.

**Why it matters:** It preserves evidence for kernel failure analysis.

**Inspect safely:**

```bash
systemctl status kdump 2>/dev/null || systemctl status kdump-tools 2>/dev/null
```

**Common confusion:** Kdump must be configured before the crash to be useful.
