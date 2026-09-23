# Q

Linux and system-administration terms beginning with Q.

## Queue depth

**Definition:** The number of requests outstanding or allowed in a queue.

**Why it matters:** Excessive queueing can increase latency even when throughput remains high.

**Inspect safely:**

```bash
iostat -x 1 3
```

**Common confusion:** Queue depth has device-specific meaning and should not be judged alone.

## Quota

**Definition:** A filesystem control limiting resource use by users, groups, or projects.

**Why it matters:** It prevents one tenant from consuming all capacity.

**Inspect safely:**

```bash
quota -s 2>/dev/null; repquota -a 2>/dev/null
```

**Common confusion:** Quota usage and ordinary disk usage answer different questions.
