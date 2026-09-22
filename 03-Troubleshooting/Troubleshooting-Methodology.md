# Troubleshooting Methodology

This methodology provides a disciplined path from an unclear symptom to a verified recovery. Use it for individual hosts, virtual machines, containers, and Linux nodes in larger systems.

## 1. Define the symptom precisely

Avoid statements such as “the server is slow.” Record what can be observed:

- The API p95 latency increased from 180 ms to 2.4 seconds.
- SSH connections time out from one network but succeed from another.
- A service exits with status 1 after configuration reload.
- `/var` reached 100 percent inode usage while block usage remained 62 percent.

Include the exact error, affected operation, first occurrence, frequency, and expected result.

## 2. Establish impact and blast radius

Determine whether the failure affects:

- One command, process, service, or host
- One user, group, namespace, tenant, or network
- One availability zone, site, or dependency
- All new requests or only existing sessions
- Read traffic, write traffic, background work, or administrative access
- Availability, confidentiality, integrity, latency, cost, or recoverability

Impact determines urgency. Blast radius determines where to compare healthy and unhealthy state.

## 3. Build a timeline

Use one timezone, preferably UTC, and record:

- Last known-good time
- First alert and first user report
- Deployments and configuration changes
- Package, kernel, certificate, identity, DNS, firewall, and infrastructure changes
- Traffic or workload shifts
- Restarts, failovers, and mitigations
- Recovery and verification times

Correlation is not proof, but timelines reveal useful candidates.

## 4. Protect the system and evidence

Before deep investigation:

- Stop unsafe automated retries when they amplify impact.
- Remove an unhealthy node from traffic when safe.
- Protect data from further writes if corruption is suspected.
- Preserve volatile evidence before restart.
- Keep one working administrative session open during remote-access changes.
- Record current state and configuration.

Availability mitigation and root-cause analysis are separate workstreams. A service may recover before the cause is known.

## 5. Collect a minimum viable snapshot

```bash
date --iso-8601=seconds
hostname
id
uptime
systemctl --failed
free -h
df -hT
df -ih
ip -br addr
ip route
ss -s
```

Add only evidence relevant to the symptom. Broad data collection can expose secrets, consume resources, and bury important signals.

## 6. Identify the failed layer

| Layer | Questions |
| --- | --- |
| User or client | Is input valid? Is failure limited to one identity or location? |
| Application | Is the process running? Is it healthy? Are errors increasing? |
| Runtime | Are file descriptors, threads, memory, or connections exhausted? |
| Service manager | Did startup, dependency, timeout, or restart policy fail? |
| Operating system | Are CPU, memory, I/O, kernel, cgroup, or scheduler constraints present? |
| Storage | Is capacity, inode count, latency, mount state, or filesystem health abnormal? |
| Network | Do link, address, route, DNS, transport, TLS, and application tests succeed? |
| Identity and policy | Do ownership, modes, ACLs, sudo, PAM, SELinux, AppArmor, or firewall rules deny access? |
| Dependency | Is an upstream, downstream, name service, database, queue, or external API unhealthy? |

## 7. Form competing hypotheses

Write hypotheses that can be disproved.

| Hypothesis | Supporting evidence | Contradicting evidence | Safe test |
| --- | --- | --- | --- |
| Disk latency blocks workers | High await and blocked tasks | Healthy comparison host has same utilization | Compare `iostat -xz 1`, process state, and storage metrics |
| DNS causes connection delay | Lookup time matches latency | Direct IP request is also slow | Compare timed hostname and IP requests |
| Recent certificate rotation failed | Errors began at rotation | Certificate dates and chain are valid | Inspect SNI, chain, trust store, and application reload state |

Do not commit to the first plausible explanation.

## 8. Test one variable at a time

A good test is:

- Safe
- Narrow
- Reversible
- Observable
- Able to reject or support a hypothesis

Avoid unplanned package upgrades, broad permission changes, security-control disablement, and multiple simultaneous configuration edits.

## 9. Distinguish root cause, trigger, and contributors

- **Trigger:** The event that exposed the failure, such as a traffic spike.
- **Root cause:** The underlying condition that made the failure possible, such as an unbounded retry policy and undersized connection pool.
- **Contributors:** Conditions that increased impact, such as missing jitter, weak dashboards, and slow rollback.
- **Symptoms:** Effects such as timeouts, high load, and queue growth.

Calling a symptom the root cause leads to weak prevention.

## 10. Mitigate impact

Mitigation can include:

- Roll back a known bad change
- Remove a failed node from service
- Fail over to a healthy replica
- Shed noncritical load
- Rate-limit or stop retry amplification
- Restore a validated configuration
- Add temporary capacity within safe limits
- Isolate a compromised or corrupt system

Choose the lowest-risk action that reduces impact. State the rollback trigger before acting.

## 11. Recover and verify

Verification must cover more than process state:

- User-facing operation succeeds
- Error rate and latency return to acceptable range
- Queues drain without renewed growth
- Resource saturation clears
- Logs show no recurring failure
- Dependencies are healthy
- Data is consistent
- Monitoring and alerting work
- Redundancy is restored
- The fix survives restart or reboot when persistence matters

## 12. Prevent recurrence

Create actions across multiple control types:

| Control | Examples |
| --- | --- |
| Elimination | Remove the unsafe dependency or manual step |
| Prevention | Validate configuration, cap retries, enforce quotas |
| Detection | Add saturation, certificate, inode, and error-budget alerts |
| Mitigation | Add circuit breakers, load shedding, failover, rollback |
| Recovery | Test backups, repair steps, and disaster recovery |
| Learning | Update runbooks, labs, ownership, and review standards |

Every action should have an owner, priority, due date, validation method, and evidence of completion.

## Escalation standard

Escalate with:

- Impact and blast radius
- Timeline in one timezone
- Exact symptoms and errors
- Relevant sanitized output
- Recent changes
- Hypotheses tested and results
- Actions already taken
- Current risk and system state
- Requested decision or expertise

## Investigation record template

```markdown
# Incident or problem title

## Impact
## Start time and timezone
## Affected systems
## Current status
## Recent changes
## Evidence
## Hypotheses
## Tests and results
## Mitigation
## Recovery verification
## Root cause
## Contributing factors
## Prevention actions
## Evidence requiring restricted handling
```

