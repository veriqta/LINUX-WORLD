# Mid-Level Linux Practical Exam

## Rules

Use an authorized disposable lab. Internet access, documentation policy and distributions must be declared before the exam. Back up configuration before editing. Never weaken security to make a task pass.

## Candidate instructions

Read every task first. Record assumptions. Use native validation before reload or restart. Preserve evidence. Stop if the target is ambiguous. Complete cleanup where requested.

## Tasks

### Task 1: Boot Kernel and Systemd Diagnostics

Recover a host that reaches emergency mode after a storage change and prevent recurrence.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 2: Advanced Identity PAM ACL and Sudo

Design time-bounded least privilege for an operations team and prove both allowed and denied actions.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 3: Systemd Service Engineering

Harden a custom service, preserve availability, verify effective directives and provide rollback.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 4: Storage LVM RAID and Filesystems

Extend capacity safely, validate every layer, test persistence and explain the rollback boundary.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 5: Networking Routing Firewall and DNS

Diagnose intermittent reachability using packet path, socket state, counters, DNS and change history.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 6: Performance CPU Memory and IO

Separate CPU saturation, memory pressure and storage latency, then propose a testable mitigation.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 7: Logging Observability and Time

Build an evidence timeline across two hosts and explain how clock drift changes the conclusion.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 8: Security Hardening SELinux and AppArmor

Resolve a denied service action by identifying intent, fixing labeling or policy, and proving least privilege.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 9: Bash Python and Automation Quality

Turn a fragile maintenance command sequence into an idempotent, observable and testable automation tool.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 10: Backup Restore and Disaster Recovery

Design and execute a restore exercise, measure actual RPO and RTO, and record gaps.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 11: Containers Namespaces and Cgroups

Diagnose a container that is healthy internally but unreachable, checking host and namespace boundaries.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 12: Incident Troubleshooting and Change

Lead a bounded incident investigation, restore service, verify users, and produce durable follow-up.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

## Scoring

Maximum: 120 points. A task receives no safety points when the candidate cannot explain its impact. Exposed secrets, work on an unauthorized target or reckless destructive action causes automatic review regardless of numeric score.

## Examiner validation

Reboot where persistence matters, test as the intended unprivileged identity, use an independent end-to-end check, inspect logs, and confirm rollback or cleanup.
