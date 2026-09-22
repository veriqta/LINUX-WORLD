# Senior Mock Interview

## Format

- 10 minutes: introduction and experience calibration
- 25 minutes: technical questions
- 35 minutes: practical investigation
- 15 minutes: scenario and trade-offs
- 10 minutes: behavioral evidence
- 5 minutes: candidate questions

## Question pool

1. Explain linux architecture and kernel behavior and complete this task: Explain a latency regression across user space, system calls, scheduling, memory, IO and dependencies.
2. Explain fleet lifecycle and configuration governance and complete this task: Design a 10,000-host change with canaries, health gates, rollback, exception handling and auditability.
3. Explain reliability slo and capacity engineering and complete this task: Create a capacity model and multi-window alert policy tied to a user journey and safe scaling action.
4. Explain deep performance and resource isolation and complete this task: Prove the limiting resource, isolate a noisy neighbor, validate tail latency and check for shifted bottlenecks.
5. Explain network architecture and failure analysis and complete this task: Diagnose regional connection resets using client, host, network and load-balancer evidence.
6. Explain storage architecture and data integrity and complete this task: Respond to rising IO latency and integrity errors while protecting evidence and minimizing data loss.
7. Explain security architecture and host defense and complete this task: Design a hardened administration path with just-in-time access, audit, recovery and emergency controls.
8. Explain observability and evidence strategy and complete this task: Define minimum viable telemetry for a critical Linux service and its dependency failure modes.
9. Explain automation platform and safe delivery and complete this task: Design a delivery system that safely changes boot, network and security settings across a fleet.
10. Explain distributed systems on linux and complete this task: Explain how a local host symptom can originate in a remote dependency and how to prove causality.
11. Explain incident command and recovery and complete this task: Command a major Linux incident, balance restoration with evidence, and manage risky decisions explicitly.
12. Explain architecture leadership and trade-offs and complete this task: Present a Linux platform design, defend trade-offs, identify unknowns and define how decisions will be validated.

## Evaluation

Score accuracy, reasoning, safety, verification, recovery and communication. Deduct heavily for invented output, destructive guessing, exposed secrets, ignored authorization or unsupported certainty.

## Decision guide

- **Strong hire:** Accurate, evidence-led, safe and independently verifies results.
- **Hire:** Meets level with minor gaps and knows when to seek help.
- **Mixed:** Correct fragments but weak investigation, safety or ownership.
- **No hire:** Memorized claims, unsafe actions, inability to verify, or dishonesty.
