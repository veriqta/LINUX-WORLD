# Decision Tree: Slow Linux System

## Entry condition

Use this tree when the primary observable symptom matches the title. If security compromise or data corruption is possible, follow the incident process before routine troubleshooting.

## Establish context

```bash
date --iso-8601=seconds
hostname
id
uptime
```

Record impact, affected scope, first occurrence, last known good, and recent changes.

## Start with

```bash
`uptime`
`vmstat 1`
`pidstat -dur 1`
`iostat -xz 1`
pressure files
```

## Branches

1. CPU saturated -> identify process, threads, quota, steal, or kernel time.
2. Memory pressure -> inspect reclaim, swap, cgroups, OOM history, and working sets.
3. I/O pressure -> inspect latency, queues, blocked tasks, filesystem, and volume limits.
4. Network latency -> inspect retransmissions, drops, DNS, dependencies, and queues.
5. No host saturation -> inspect locks, application queues, external dependencies, and serial work.
6. Only one user path slow -> compare identity, data set, cache, route, and feature path.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Mitigate the first constrained resource or dependency, then verify user latency, errors, throughput, queues, and headroom.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

