# Decision Tree: Disk or Inodes Full

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
`df -hT`
`df -ih`
`findmnt`
`lsof +L1`
```

## Branches

1. Blocks full, inodes healthy -> inspect large directories on the same filesystem with `du -x`.
2. Inodes full, blocks available -> locate high-file-count directories and the producer.
3. Usage remains after deletion -> check deleted files still held open.
4. Filesystem appears wrong -> confirm mount state; data may have been written beneath an absent mount.
5. Growth is active -> identify and stop the producing process before cleanup.
6. Storage errors present -> protect data and investigate device or filesystem health before deletion.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Free only verified disposable data, restore safe headroom, stop recurrence, and verify writes, alerts, rotation, and retention.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

