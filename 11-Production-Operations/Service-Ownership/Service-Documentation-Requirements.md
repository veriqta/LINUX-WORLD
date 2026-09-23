# Service Documentation Requirements

This guide explains how service documentation requirements supports the ability to make accountability, support boundaries, dependencies, and service criticality explicit.

> Production safety: Test procedures in an isolated environment. Confirm the target, authorization, impact, rollback path, and evidence requirements before changing a live system.

## Learning objectives

After completing this resource, readers should be able to:

- Explain service documentation requirements in an operational context.
- Apply it to a Linux service without losing ownership, evidence, or rollback control.
- Recognize unsafe assumptions and conditions that require escalation.
- Verify outcomes from both the system and user perspectives.
- Produce a record another qualified operator can review and repeat.

## Operational meaning

Service Documentation Requirements is not complete when a command succeeds or a document exists. It is complete when the intended service outcome is demonstrated, the risk is bounded, the evidence is preserved, and the next responsible person can understand the resulting state.

Use four lenses:

1. **Service:** What user-facing capability is protected?
2. **System:** Which hosts, processes, data, networks, and dependencies participate?
3. **Control:** Who may decide, execute, approve, stop, or escalate?
4. **Evidence:** What proves the before state, action, result, and remaining risk?

## Core model

| Element | Questions | Required output |
|---|---|---|
| Scope | What is included and excluded? | Named services, environments, owners, and boundaries |
| Trigger | What starts the workflow? | Observable condition or authorized request |
| Risk | What can fail and how far can it spread? | Severity, likelihood, blast radius, and stop conditions |
| Action | What is performed and in what order? | Reviewed steps with accountable owners |
| Verification | How is success proved? | System, dependency, security, and user-path checks |
| Recovery | What happens if the result is wrong? | Rollback, roll-forward, restore, or escalation path |
| Learning | What should change afterward? | Owned, testable follow-up actions |

## Production workflow

### 1. Establish context

Record the service, environment, host or fleet selector, request or incident reference, UTC time, operator identity, owner, criticality, and recent relevant changes. Confirm authorization before collecting restricted evidence.

### 2. Define success and failure

State the expected observable result. Define a timeout, guardrails, stop conditions, rollback trigger, and escalation threshold. Avoid goals such as “looks healthy.” Prefer measurable statements such as an agreed success rate, latency percentile, capacity margin, or completed restore validation.

### 3. Capture the before state

Collect the smallest set of evidence that can distinguish healthy behavior from the suspected risk. Preserve commands and queries with timestamps. Redact secrets and personal data.

```bash
# Collect identifiers without changing the host
hostnamectl
systemctl list-units --type=service --state=running --no-pager
systemctl list-dependencies --reverse SERVICE.service
ss -lntup
```

The examples are primarily read-only. Replace placeholders deliberately. A command returning exit code zero proves only that the command ran, not that the service is correct.

### 4. Evaluate dependencies and blast radius

Map upstream callers, downstream services, state stores, identity, DNS, network paths, monitoring, deployment systems, and human dependencies. Decide whether one host, one availability zone, one tenant, or the entire fleet could be affected.

### 5. Perform controlled work

Use the approved procedure. Change one meaningful variable at a time when diagnosing. Use canaries, batches, rate limits, maintenance windows, and peer review when the risk warrants them. Record deviations immediately.

### 6. Verify in layers

- **Process:** expected process or unit is running.
- **Host:** CPU, memory, storage, network, and logs show no new failure.
- **Dependency:** required upstream and downstream paths work.
- **Service:** health and readiness reflect real dependency health.
- **User:** a representative transaction succeeds.
- **Security:** access and exposure did not become broader.
- **Durability:** state remains correct after restart or failover when relevant.

### 7. Close or escalate

Close only after the service is stable for an appropriate observation period and monitoring is trustworthy. Escalate when an alert or change reaches a team that does not own the affected component. Handover must state the current impact, actions completed, evidence, remaining hypotheses, risks, and next decision deadline.

## Scenario

A production service shows degraded behavior shortly after a routine change. One instance is unhealthy, but aggregate availability remains within its target. The operator must decide whether to investigate in place, remove the instance, roll back the change, or escalate.

A strong response:

1. Confirms customer impact and scope before acting.
2. Compares the unhealthy instance with a healthy peer.
3. Checks the change timeline and dependency signals.
4. Removes only the affected instance if that reduces risk safely.
5. Uses the predefined rollback trigger rather than intuition.
6. Verifies the user path and fleet health after mitigation.
7. Records evidence and creates a bounded follow-up action.

## Common mistakes

- Acting on an alert label without validating current impact.
- Treating silence as recovery when monitoring may also be broken.
- Changing several variables and losing causal evidence.
- Running broad or destructive commands against an unconfirmed target.
- Recording commands without output interpretation.
- Keeping knowledge in chat instead of the approved operational record.
- Closing work while risk, ownership, or follow-up remains ambiguous.

## Practical exercise

In an isolated lab, select a systemd-managed test service. Create a record for service documentation requirements. Capture its owner, dependencies, baseline, expected behavior, failure trigger, and recovery method. Introduce one reversible fault, observe the resulting signals, recover the service, and verify a representative request.

### Exercise evidence

- UTC timeline and environment identity
- Before and after command output
- One hypothesis supported or rejected by evidence
- Verification from the service and user perspectives
- Rollback or recovery result
- One preventive improvement with an owner and test

## Knowledge check

1. What observable condition starts this workflow?
2. Which decision requires an accountable owner?
3. What is the credible worst-case blast radius?
4. What evidence distinguishes correlation from causation?
5. Which check proves user-facing recovery?
6. When must the operator stop or escalate?
7. How will the result be reviewed and kept current?

## Completion checklist

- [ ] Purpose, scope, owner, and service criticality are clear.
- [ ] Preconditions, authorization, and access are confirmed.
- [ ] Success, stop, rollback, and escalation conditions are measurable.
- [ ] Before-state evidence uses UTC timestamps.
- [ ] Dependencies and blast radius are understood.
- [ ] Actions and interpretations are recorded.
- [ ] Verification includes a representative user path.
- [ ] Secrets and sensitive data are excluded.
- [ ] Remaining risk and follow-up ownership are explicit.

## Related resources

- [Production safety and access](../Production-Safety-and-Access.md)
- [Operational documentation standards](../Operational-Documentation-Standards.md)
- [Roles, ownership, and escalation](../Roles-Ownership-and-Escalation.md)

## Continue learning

- [Section overview](./README.md)
- [Production Operations home](../README.md)
- [Templates](../Templates/README.md)
