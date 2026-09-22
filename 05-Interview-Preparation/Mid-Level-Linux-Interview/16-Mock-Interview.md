# Mid-Level Mock Interview

## Format

- 10 minutes: introduction and experience calibration
- 25 minutes: technical questions
- 35 minutes: practical investigation
- 15 minutes: scenario and trade-offs
- 10 minutes: behavioral evidence
- 5 minutes: candidate questions

## Question pool

1. Explain boot kernel and systemd diagnostics and complete this task: Recover a host that reaches emergency mode after a storage change and prevent recurrence.
2. Explain advanced identity pam acl and sudo and complete this task: Design time-bounded least privilege for an operations team and prove both allowed and denied actions.
3. Explain systemd service engineering and complete this task: Harden a custom service, preserve availability, verify effective directives and provide rollback.
4. Explain storage lvm raid and filesystems and complete this task: Extend capacity safely, validate every layer, test persistence and explain the rollback boundary.
5. Explain networking routing firewall and dns and complete this task: Diagnose intermittent reachability using packet path, socket state, counters, DNS and change history.
6. Explain performance cpu memory and io and complete this task: Separate CPU saturation, memory pressure and storage latency, then propose a testable mitigation.
7. Explain logging observability and time and complete this task: Build an evidence timeline across two hosts and explain how clock drift changes the conclusion.
8. Explain security hardening selinux and apparmor and complete this task: Resolve a denied service action by identifying intent, fixing labeling or policy, and proving least privilege.
9. Explain bash python and automation quality and complete this task: Turn a fragile maintenance command sequence into an idempotent, observable and testable automation tool.
10. Explain backup restore and disaster recovery and complete this task: Design and execute a restore exercise, measure actual RPO and RTO, and record gaps.
11. Explain containers namespaces and cgroups and complete this task: Diagnose a container that is healthy internally but unreachable, checking host and namespace boundaries.
12. Explain incident troubleshooting and change and complete this task: Lead a bounded incident investigation, restore service, verify users, and produce durable follow-up.

## Evaluation

Score accuracy, reasoning, safety, verification, recovery and communication. Deduct heavily for invented output, destructive guessing, exposed secrets, ignored authorization or unsupported certainty.

## Decision guide

- **Strong hire:** Accurate, evidence-led, safe and independently verifies results.
- **Hire:** Meets level with minor gaps and knows when to seek help.
- **Mixed:** Correct fragments but weak investigation, safety or ownership.
- **No hire:** Memorized claims, unsafe actions, inability to verify, or dishonesty.
