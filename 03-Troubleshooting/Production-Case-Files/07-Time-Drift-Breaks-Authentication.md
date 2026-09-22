# Time Drift Breaks Authentication

> Educational production case. Names, times, and identifiers are intentionally generic.

## Incident summary

Authentication tokens were reported as expired or not yet valid on one host.

## Detection

The incident was detected through a combination of service errors, resource or dependency alerts, and operator verification. The first alert did not by itself identify the cause.

## Initial questions

- Which requests, hosts, users, or regions are affected?
- What was the last known-good time?
- What changed in the preceding window?
- Is impact increasing?
- Is data integrity or security at risk?
- Which mitigation can reduce harm without destroying evidence?

## Timeline

| Relative time | Event |
| --- | --- |
| T-30 min | System operating within normal objectives |
| T+00 | First abnormal symptom or alert |
| T+05 | Impact and blast radius confirmed |
| T+10 | Recent changes and minimum system evidence collected |
| T+20 | Competing hypotheses tested |
| T+30 | Primary mitigation applied |
| T+45 | User-facing recovery verified |
| T+90 | Root-cause evidence reviewed and prevention work assigned |

## Evidence collected

- System and service timestamps in one timezone
- Relevant service, kernel, security, and dependency logs
- Resource saturation and queue measurements
- Configuration and package state
- Healthy versus unhealthy comparison
- Recent deployment, certificate, DNS, firewall, identity, or infrastructure changes
- Sanitized user-visible error samples

## Hypothesis table

| Hypothesis | Supporting evidence | Rejecting evidence | Test |
| --- | --- | --- | --- |
| Recent change introduced failure | Symptom began near change window | Unchanged hosts also fail | Compare cohorts and revert safely |
| Resource or limit exhausted | Queue, pressure, or error counters rose | Healthy headroom at the affected layer | Measure host, cgroup, process, and dependency limits |
| Dependency path failed | Downstream latency or errors precede local errors | Direct dependency tests remain healthy | Compare dependency and local timelines |
| Security or policy denied access | Denial records align with requests | No matching denial and same policy works elsewhere | Inspect policy and audit evidence |

## Root cause

The host lost synchronization with approved time sources after a network change. Offset exceeded the token validation tolerance.

## Trigger and contributing factors

The trigger exposed the latent condition. Impact was increased by incomplete detection, insufficient validation, unsafe defaults, or missing capacity and expiry controls. These contributors are tracked separately from the root cause.

## Mitigation and recovery

Removed the host from authentication traffic, restored trusted time synchronization using an application-safe correction, and validated token and log consistency.

Recovery was not declared until:

- The user-visible operation succeeded.
- Error rate and latency returned to objective.
- Queues and saturation cleared.
- No recurring failure appeared in logs.
- Data integrity checks passed where relevant.
- Monitoring and alerting were functioning.
- Redundancy and safe capacity were restored.

## Prevention

Monitor offset and source reachability, allow approved time traffic, use several trusted sources, and include time health in readiness.

## Review questions

1. Which symptom could have been mistaken for the root cause?
2. What evidence needed preservation before restart?
3. Which mitigation reduced impact fastest?
4. What rollback trigger should have been defined?
5. Which preventive control has the highest leverage?

