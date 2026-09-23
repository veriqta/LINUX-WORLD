# P

Linux and system-administration terms beginning with P.

## Package

**Definition:** A versioned software artifact with files, metadata, dependencies, and lifecycle actions managed by a package system.

**Why it matters:** Packages support consistent installation, verification, update, and removal.

**Inspect safely:**

```bash
rpm -q PACKAGE 2>/dev/null || dpkg-query -W PACKAGE 2>/dev/null
```

**Common confusion:** A package is not the same as the repository that distributes it.

## Page cache

**Definition:** Kernel memory that caches file data.

**Why it matters:** It improves I/O performance and explains why used memory can be healthy.

**Inspect safely:**

```bash
grep -E 'Cached|Buffers' /proc/meminfo
```

**Common confusion:** Cached memory is generally reclaimable and not automatically a leak.

## PID

**Definition:** Process identifier, a numeric identifier in a PID namespace.

**Why it matters:** Administrators use it to inspect and signal a process.

**Inspect safely:**

```bash
ps -p PID -o pid,ppid,state,comm,args
```

**Common confusion:** PIDs are reused and may differ across namespaces.

## Pipe

**Definition:** A unidirectional kernel buffer connecting one process's output to another's input.

**Why it matters:** Pipelines compose small command-line tools.

**Inspect safely:**

```bash
printf 'a
b
' | wc -l
```

**Common confusion:** A pipe carries bytes, not inherently rows or structured objects.

## Port

**Definition:** A transport-layer number used with an address and protocol to identify an endpoint.

**Why it matters:** Port conflicts and exposure are common service problems.

**Inspect safely:**

```bash
ss -lntup
```

**Common confusion:** A port number alone does not identify an application across all addresses and protocols.

## Process

**Definition:** A running program instance with execution state and resources.

**Why it matters:** Services, jobs, and commands execute as processes.

**Inspect safely:**

```bash
ps -ef
```

**Common confusion:** A process may contain multiple threads.
