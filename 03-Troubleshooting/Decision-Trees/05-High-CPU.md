# Decision Tree: High CPU Usage

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
`mpstat -P ALL 1`
`pidstat -u 1`
`ps --sort=-%cpu`
```

## Branches

1. User CPU high -> identify hot process and threads, workload, loops, serialization, or inefficient code.
2. System CPU high -> inspect system calls, networking, storage, kernel activity, and context switching.
3. Steal high -> investigate hypervisor contention or instance capacity.
4. One core saturated -> inspect single-threaded work, IRQ affinity, locks, and CPU pinning.
5. CPU throttled -> inspect cgroup quota and throttled time.
6. High load but CPU idle -> switch to blocked-task and I/O investigation.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Reduce harmful workload safely, preserve profiling evidence, and verify throughput, latency, errors, and CPU headroom.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

