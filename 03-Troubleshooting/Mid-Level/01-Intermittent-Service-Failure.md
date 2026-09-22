# Intermittent Service Failure

## Scenario

A service appears healthy between failures, but requests occasionally fail.

## Investigation objective

Identify the first failed layer, distinguish the primary cause from secondary symptoms, reduce impact safely, and produce evidence that another engineer can review.

## Likely investigation areas

- Time correlation
- Load
- Dependency latency
- Resource limits
- Restart history
- Network errors

## Before changing anything

```bash
date --iso-8601=seconds
hostname
id
uptime
```

Record the exact error, affected users or workloads, first occurrence, frequency, recent changes, and whether the problem is expanding.

## Evidence commands

Run only commands appropriate to the system and replace placeholders.

```bash
`journalctl -u UNIT --since ...`
`systemctl show UNIT`
`pidstat`
`ss -s`
dependency timing
application metrics
```

Interpret output in context. One unusual value is not automatically the cause.

## Investigation sequence

1. Reproduce or observe the symptom without increasing impact.
2. Compare affected and unaffected paths, users, hosts, or time windows.
3. Identify the lowest layer where expected behavior stops.
4. Write at least two plausible hypotheses.
5. State what evidence would reject each hypothesis.
6. Run the safest discriminating test.
7. Capture results with timestamps.
8. Stop if the next test risks availability, access, confidentiality, or data integrity.

## Safe mitigation

Reduce impact, capture the failure window, and correct the first failing dependency or exhausted limit.

Mitigation reduces impact. It does not prove root cause. Record the change, owner, start time, rollback method, and rollback trigger.

## Recovery verification

Error rate remains normal across the former failure conditions and an alert detects recurrence.

Also confirm:

- No new relevant errors appear.
- Monitoring and alerting operate correctly.
- Security controls remain enforced.
- The change persists only when persistence is intended.
- Redundancy and capacity are restored.
- The original symptom does not recur during a representative test window.

## Common mistakes

- Restarting before collecting volatile evidence
- Changing several variables at once
- Treating correlation as proof
- Expanding permissions or disabling controls broadly
- Testing only from localhost
- Ignoring a dependency because the local process is running
- Declaring recovery when only one command succeeds

## Escalate when

- Data corruption or security compromise is possible.
- The failure affects several systems or customers.
- A destructive or difficult-to-reverse action is proposed.
- Required evidence needs restricted access.
- The root cause crosses ownership boundaries.
- Safe recovery requires an unavailable backup, console, or specialist.

## Prevention questions

- Which control should have prevented this?
- Which signal should have detected it earlier?
- Was capacity, retention, expiry, or dependency risk monitored?
- Can configuration be validated before deployment?
- Can the failure be reproduced safely in a lab?
- Does the runbook state ownership, rollback, and verification?

## Knowledge check

1. What evidence would separate the two most likely causes?
2. Which observation must be collected before restart?
3. What is the smallest reversible mitigation?
4. How will recovery be verified from the affected user's perspective?
5. What durable change would prevent recurrence?

