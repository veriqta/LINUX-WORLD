# Decision Tree: Filesystem Will Not Mount

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
`lsblk -f`
`blkid`
`findmnt --verify`
`journalctl -k -b`
```

## Branches

1. Device absent -> inspect attachment, path, multipath, controller, and hardware or cloud state.
2. Identifier mismatch -> compare UUID or label with fstab and actual device.
3. Unknown filesystem -> install supported tooling or confirm the correct device.
4. Bad option -> validate filesystem-specific mount options.
5. Filesystem error -> stop writes, confirm backup, use no-modify or read-only inspection first.
6. Mountpoint busy or unexpected -> inspect current mounts, namespaces, and processes using the path.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Mount read-only first when integrity is uncertain. Verify data, ownership, application access, and reboot persistence.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

