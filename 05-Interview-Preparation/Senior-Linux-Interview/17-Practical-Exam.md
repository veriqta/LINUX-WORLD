# Senior Linux Practical Exam

## Rules

Use an authorized disposable lab. Internet access, documentation policy and distributions must be declared before the exam. Back up configuration before editing. Never weaken security to make a task pass.

## Candidate instructions

Read every task first. Record assumptions. Use native validation before reload or restart. Preserve evidence. Stop if the target is ambiguous. Complete cleanup where requested.

## Tasks

### Task 1: Linux Architecture and Kernel Behavior

Explain a latency regression across user space, system calls, scheduling, memory, IO and dependencies.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 2: Fleet Lifecycle and Configuration Governance

Design a 10,000-host change with canaries, health gates, rollback, exception handling and auditability.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 3: Reliability SLO and Capacity Engineering

Create a capacity model and multi-window alert policy tied to a user journey and safe scaling action.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 4: Deep Performance and Resource Isolation

Prove the limiting resource, isolate a noisy neighbor, validate tail latency and check for shifted bottlenecks.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 5: Network Architecture and Failure Analysis

Diagnose regional connection resets using client, host, network and load-balancer evidence.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 6: Storage Architecture and Data Integrity

Respond to rising IO latency and integrity errors while protecting evidence and minimizing data loss.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 7: Security Architecture and Host Defense

Design a hardened administration path with just-in-time access, audit, recovery and emergency controls.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 8: Observability and Evidence Strategy

Define minimum viable telemetry for a critical Linux service and its dependency failure modes.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 9: Automation Platform and Safe Delivery

Design a delivery system that safely changes boot, network and security settings across a fleet.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 10: Distributed Systems on Linux

Explain how a local host symptom can originate in a remote dependency and how to prove causality.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 11: Incident Command and Recovery

Command a major Linux incident, balance restoration with evidence, and manage risky decisions explicitly.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 12: Architecture Leadership and Trade-offs

Present a Linux platform design, defend trade-offs, identify unknowns and define how decisions will be validated.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

## Scoring

Maximum: 120 points. A task receives no safety points when the candidate cannot explain its impact. Exposed secrets, work on an unauthorized target or reckless destructive action causes automatic review regardless of numeric score.

## Examiner validation

Reboot where persistence matters, test as the intended unprivileged identity, use an independent end-to-end check, inspect logs, and confirm rollback or cleanup.
