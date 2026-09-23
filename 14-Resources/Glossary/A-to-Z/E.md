# E

Linux and system-administration terms beginning with E.

## Environment variable

**Definition:** A named value inherited by child processes through the process environment.

**Why it matters:** Programs use environment variables for configuration and execution context.

**Inspect safely:**

```bash
printenv | sort
```

**Common confusion:** Shell variables are not exported environment variables unless exported.

## eBPF

**Definition:** Extended Berkeley Packet Filter, a kernel execution and instrumentation technology with a verifier and controlled hooks.

**Why it matters:** It enables advanced networking, tracing, security, and observability.

**Inspect safely:**

```bash
bpftool prog list 2>/dev/null
```

**Common confusion:** eBPF is broader than packet filtering.

## Exit status

**Definition:** A small integer returned when a process terminates, where zero conventionally means success.

**Why it matters:** Scripts use exit status to control branching and detect failure.

**Inspect safely:**

```bash
false; printf '%s
' "$?"
```

**Common confusion:** Nonzero meanings are command-specific.

## ext4

**Definition:** A commonly used journaling Linux filesystem.

**Why it matters:** Administrators manage its capacity, features, checks, and recovery constraints.

**Inspect safely:**

```bash
findmnt -t ext4; tune2fs -l DEVICE 2>/dev/null | head
```

**Common confusion:** A filesystem type is distinct from the block device below it.
