# Performance: Troubleshooting

## Triage order

1. Record the exact symptom and first known occurrence.
2. Determine blast radius and business impact.
3. Check recent deployments, configuration, package, identity, network, and infrastructure changes.
4. Collect current state before restarting or editing.
5. Separate facts from hypotheses.
6. Test the least risky explanation first.
7. Mitigate impact, then continue root-cause analysis.
8. Verify recovery from the user's perspective.

## Common failure patterns

| Symptom | Investigation direction |
| --- | --- |
| High load, low CPU | Look for uninterruptible I/O, storage latency, lock contention, and runnable versus blocked tasks. |
| Free memory is low | Linux uses memory for cache. Examine `available`, swap activity, PSI, cgroup limits, and OOM events. |
| Disk utilization is 100 percent | Inspect latency, queue, IOPS, request size, device errors, and workload. Utilization alone is not root cause. |
| CPU is high | Separate user, system, iowait, steal, throttling, and per-thread behavior. |
| Intermittent latency | Correlate percentiles with GC, DNS, retries, queueing, dependency latency, throttling, and packet loss. |

## Useful questions

- What changed immediately before the failure?
- Is the problem limited to one user, process, host, zone, or distribution?
- Does the failure happen consistently?
- Is the command failing, or is the resulting system behavior wrong?
- What do exit status, standard error, service logs, kernel logs, and audit logs show?
- Which dependency is the first one known to be unhealthy?
- What evidence confirms recovery?

## Avoid these mistakes

- Repeating destructive commands without understanding the first failure
- Restarting before collecting volatile evidence
- Changing several variables at once
- Disabling security controls to make an error disappear
- Assuming a familiar command behaves identically on every distribution
- Treating a successful local test as proof of end-to-end recovery
- Publishing sensitive diagnostic output

## Escalation package

Provide the next responder with the timeline, impact, exact commands, sanitized output, relevant logs, recent changes, hypotheses tested, mitigation attempted, current state, and rollback status.

