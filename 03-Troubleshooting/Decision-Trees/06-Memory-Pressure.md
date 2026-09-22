# Decision Tree: Memory Pressure

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
`free -h`
`vmstat 1`
`cat /proc/pressure/memory`
`journalctl -k -g 'oom|Out of memory'`
```

## Branches

1. Low free but high available -> likely normal cache use; inspect pressure before action.
2. Swap-in and swap-out active -> identify working-set pressure and latency impact.
3. Host healthy, workload killed -> inspect cgroup memory limit and events.
4. RSS grows continuously -> investigate application retention or leak.
5. Page cache dominates with pressure -> inspect I/O and reclaim behavior.
6. OOM occurred -> identify selected process, allocation context, limits, and `oom_score_adj`.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Protect critical workloads, reduce allocations or concurrency, and verify no renewed pressure under representative load.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

