# Decision Tree: Service Will Not Start

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
`systemctl status UNIT`
`journalctl -u UNIT -b -n 200`
`systemctl cat UNIT`
```

## Branches

1. Unit not found -> confirm package, unit name, user versus system scope, and installed unit files.
2. Configuration error -> run the application's native validator and compare with known-good configuration.
3. Permission denial -> identify runtime user, path traversal, ACL, SELinux or AppArmor denial.
4. Port conflict -> identify listener with `ss -lntup` and confirm intended ownership.
5. Dependency failure -> inspect required mounts, network readiness, sockets, credentials, and upstream services.
6. Immediate exit -> run only the documented foreground diagnostic in a safe environment and inspect exit status.

## Decision discipline

At each branch:

1. Record the observation.
2. State which hypothesis it supports or rejects.
3. Choose the smallest safe next test.
4. Avoid changing the system until the failed layer is identified.
5. Preserve output needed for escalation.

## Mitigation and verification

Start the unit once after correcting the confirmed cause. Verify process, port, logs, health endpoint, dependency health, and restart behavior.

Verify the result through the same user or workload path that exposed the failure. Check logs, monitoring, dependencies, persistence, security controls, and recurrence.

## Stop and escalate

Stop when the next action could erase data, remove administrative access, weaken security controls, affect several systems, or requires authority not already granted.

