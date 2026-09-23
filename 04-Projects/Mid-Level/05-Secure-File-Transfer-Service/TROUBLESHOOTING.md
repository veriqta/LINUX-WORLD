# Secure File Transfer Service: Troubleshooting

## Method

Symptom, blast radius, timeline, recent changes, evidence, competing hypotheses, safe test, root cause, mitigation, recovery, verification, prevention.

## Required scenarios

- Bad chroot ownership
- Expired key
- Full quota
- Traversal attempt
- Disabled account
- And reload failure

## Evidence

Collect client result, service state, configuration version, logs, socket or storage state, resource pressure, dependency health, and exact timestamps.

## Stop conditions

Stop before a destructive storage action, loss of administrative access, uncontrolled data exposure, broad security disablement, or any effect outside the disposable lab.

