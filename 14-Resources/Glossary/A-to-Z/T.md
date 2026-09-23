# T

Linux and system-administration terms beginning with T.

## TCP

**Definition:** A connection-oriented transport protocol with ordered delivery, flow control, and congestion control.

**Why it matters:** Its states and retransmissions are central to service troubleshooting.

**Inspect safely:**

```bash
ss -tan
```

**Common confusion:** A successful TCP connection does not prove application correctness.

## Thread

**Definition:** An execution context within a process that shares many resources with peer threads.

**Why it matters:** Thread counts, scheduling, and contention affect service behavior.

**Inspect safely:**

```bash
ps -eLf | head
```

**Common confusion:** A thread is schedulable, but tools may display threads and processes differently.

## tmpfs

**Definition:** A memory-backed filesystem whose contents are normally lost at unmount or reboot.

**Why it matters:** It is used for temporary and runtime data.

**Inspect safely:**

```bash
findmnt -t tmpfs
```

**Common confusion:** tmpfs can use swap and still has capacity limits.

## TTY

**Definition:** A terminal interface associated with interactive sessions and terminal semantics.

**Why it matters:** TTY presence affects job control, input, output, and automation.

**Inspect safely:**

```bash
tty; stty -a
```

**Common confusion:** A terminal emulator is userspace software presenting a terminal interface.
