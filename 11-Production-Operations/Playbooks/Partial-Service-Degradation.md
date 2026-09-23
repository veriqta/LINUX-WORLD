# Partial Service Degradation

This playbook coordinates response to a partial service degradation across technical and organizational boundaries.

> Production safety: Test procedures in an isolated environment. Confirm the target, authorization, impact, rollback path, and evidence requirements before changing a live system.

## Learning objectives

After completing this resource, readers should be able to:

- Explain partial service degradation in an operational context.
- Apply it to a Linux service without losing ownership, evidence, or rollback control.
- Recognize unsafe assumptions and conditions that require escalation.
- Verify outcomes from both the system and user perspectives.
- Produce a record another qualified operator can review and repeat.

## Event-specific operating guidance

- **Activate when:** A subset of users, requests, features, tenants, or locations is impaired.
- **Containment priorities:** Segment by dimension. Remove unhealthy instances. Reduce optional work. Do not let aggregates hide unequal impact.
- **Recovery proof:** Verify Segmented success rate and latency, affected cohort recovery, aggregate health, and capacity.
- **Key caution:** Do not let rapid mitigation destroy evidence, weaken another failure domain, or create an untracked second incident.

## Activation criteria

Activate when the event causes or credibly threatens material user impact, data integrity, security, regulatory obligations, multiple services, a failure domain, or the ability to monitor and recover safely. A responder may begin triage before formal declaration, but must not delay escalation when criteria are met.

## Objectives in priority order

1. Protect people and prevent unsafe action.
2. Limit security, data, and customer harm.
3. Establish command, scope, severity, and a shared timeline.
4. Stabilize the service using the lowest-risk effective mitigation.
5. Restore verified service and data integrity.
6. Communicate accurately at a fixed cadence.
7. Preserve evidence and create follow-up work.

## Required roles

| Role | Responsibility | Must not do |
|---|---|---|
| Incident commander | Own priorities, severity, cadence, and decisions | Become the primary terminal operator |
| Operations lead | Coordinate mitigation and recovery | Make unlogged high-risk changes |
| Investigation lead | Manage hypotheses and evidence | Confuse assumption with fact |
| Communications lead | Issue approved updates | Guess cause or recovery time |
| Scribe | Maintain UTC timeline and decisions | Record secrets or unnecessary personal data |
| Service owner | Supply architecture and risk context | Override command without explicit transfer |

One person may cover several roles in a small event, but decision ownership must remain explicit.

## First 15 minutes

- Declare or reject the incident explicitly.
- Assign commander, operations lead, communications lead, and scribe.
- Create the approved incident channel and record.
- State known impact, affected scope, start time, and confidence.
- Freeze unrelated production changes.
- Identify recent changes and critical dependencies.
- Select the next update time, even if no new information is expected.
- Choose the safest immediate mitigation and its rollback condition.

## Technical triage

```bash
date -u +%Y-%m-%dT%H:%M:%SZ
uptime
systemctl --failed --no-pager
ss -s
df -hT
free -h
journalctl -p warning --since '-30 min' --no-pager
```

Collect only relevant evidence. Compare affected and healthy failure domains. Use metrics, logs, traces, events, deployment records, and user reports to test competing hypotheses.

## Decision framework

For each proposed action, record:

- Evidence supporting the action
- Expected benefit and time to effect
- Credible failure mode and blast radius
- Reversibility and rollback trigger
- Required authority and reviewer
- Verification method
- Decision owner

Prefer stabilizing actions over complete diagnosis when harm is ongoing, provided the mitigation is understood and reversible.

## Phase workflow

### Detect and declare

Validate impact, classify severity, record uncertainty, and page the required owners. Do not wait for perfect diagnosis.

### Contain and stabilize

Reduce traffic, isolate affected capacity, disable a risky path, roll back a suspect change, fail over, or apply another preapproved mitigation. Avoid simultaneous uncontrolled actions.

### Investigate

Maintain competing hypotheses. Choose tests that produce different expected results. Record rejected hypotheses so work is not repeated.

### Recover

Restore dependencies in their required order. Validate data before allowing writes when integrity is uncertain. Increase traffic gradually and watch guardrails.

### Return to service

Verify user transactions, service objectives, data correctness, alerting, redundancy, and operational access. Define a heightened-monitoring period and owner.

### Close and learn

Record impact, final state, unresolved risk, evidence location, follow-up owners, and postmortem requirement.

## Communication template

> **Status:** Investigating, Identified, Monitoring, or Resolved  
> **Impact:** Observable user or business effect  
> **Scope:** Services, regions, or users known to be affected  
> **Actions:** Completed actions only  
> **Next update:** Exact UTC time  
> **Confidence:** What is known, suspected, and unknown

Never publish sensitive internals, unsupported causes, or recovery estimates without an accountable source.

## Escalation triggers

- Severity or blast radius increases.
- Data integrity, confidentiality, or evidence is at risk.
- The team cannot mitigate within the agreed time.
- Required access, expertise, or decision authority is missing.
- A third party or regional dependency is involved.
- Recovery objectives are likely to be missed.
- Monitoring cannot confirm system state.

## Exercise

Run a tabletop using a fictional service. Inject one misleading alert, one unavailable owner, and one failed mitigation. Score declaration time, role clarity, evidence quality, update cadence, safe decision-making, verification, and follow-up ownership.

## Completion checklist

- [ ] Activation and severity are explicit.
- [ ] Command and functional roles are assigned.
- [ ] Impact and scope are evidence-based.
- [ ] Decisions include risk and rollback.
- [ ] Updates separate facts, hypotheses, and unknowns.
- [ ] Recovery includes data, dependencies, monitoring, and user paths.
- [ ] Closure includes remaining risk and owned follow-up.

## Continue learning

- [Section overview](./README.md)
- [Production Operations home](../README.md)
- [Templates](../Templates/README.md)
