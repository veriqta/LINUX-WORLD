# S

Linux and system-administration terms beginning with S.

## SELinux

**Definition:** A label-based mandatory access control system integrated with the Linux kernel.

**Why it matters:** It confines processes beyond discretionary permissions.

**Inspect safely:**

```bash
getenforce; sestatus
```

**Common confusion:** Disabling SELinux is not an acceptable default fix for a denial.

## Signal

**Definition:** An asynchronous notification delivered to a process or thread.

**Why it matters:** Signals request termination, reload, stop, continue, or application-defined actions.

**Inspect safely:**

```bash
kill -l
```

**Common confusion:** SIGKILL cannot be caught, but it also cannot resolve a process blocked in uninterruptible sleep.

## SLI

**Definition:** Service Level Indicator, a measured signal that represents an aspect of service reliability.

**Why it matters:** It turns reliability into observable data such as successful-request ratio or latency.

**Inspect safely:**

```bash
printf '%s
' 'Inspect the SLI query, data source, window, and missing-data behavior'
```

**Common confusion:** An SLI is a measurement, while an SLO is the target.

## SLO

**Definition:** Service Level Objective, a target for an SLI over a defined period.

**Why it matters:** It guides reliability decisions, alerting, and error-budget use.

**Inspect safely:**

```bash
printf '%s
' 'Compare the current SLI result with the documented objective and window'
```

**Common confusion:** An SLO is not automatically a contractual SLA.

## Socket

**Definition:** A kernel communication endpoint used locally or over networks.

**Why it matters:** Listening and connected sockets reveal service behavior.

**Inspect safely:**

```bash
ss -lntup; ss -x
```

**Common confusion:** A socket is not limited to TCP networking.

## Swap

**Definition:** Disk or compressed-memory space used to hold memory pages under policy and pressure.

**Why it matters:** Swap behavior affects latency and survival under memory pressure.

**Inspect safely:**

```bash
swapon --show; free -h
```

**Common confusion:** Any swap use does not automatically prove insufficient RAM.

## System call

**Definition:** The controlled interface through which userspace requests kernel services.

**Why it matters:** Tracing calls helps explain program behavior and failure.

**Inspect safely:**

```bash
strace -c COMMAND
```

**Common confusion:** A library function may perform no system call or several system calls.

## systemd

**Definition:** A system and service manager commonly used as PID 1 on Linux distributions.

**Why it matters:** It manages units, dependencies, activation, and cgroups.

**Inspect safely:**

```bash
systemctl --version; systemctl list-units --type=service
```

**Common confusion:** systemd includes more than service startup.
