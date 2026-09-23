# G

Linux and system-administration terms beginning with G.

## GID

**Definition:** Group identifier, the numeric identity the kernel uses for a group.

**Why it matters:** Ownership and authorization decisions use numeric IDs.

**Inspect safely:**

```bash
getent group GROUP; id USER
```

**Common confusion:** A group name is a human-readable mapping to a GID.

## GNU

**Definition:** A free-software project that provides many tools and libraries used on Linux systems.

**Why it matters:** Core utilities, Bash, glibc, and other GNU components shape common Linux environments.

**Inspect safely:**

```bash
ls --version | head -1
```

**Common confusion:** GNU is not the Linux kernel.

## GRUB

**Definition:** A common bootloader used to select and load kernels and initramfs images.

**Why it matters:** Its configuration is important for boot recovery and kernel arguments.

**Inspect safely:**

```bash
grub-install --version 2>/dev/null || grub2-install --version 2>/dev/null
```

**Common confusion:** Generated GRUB configuration should normally be changed through distribution-supported inputs.
