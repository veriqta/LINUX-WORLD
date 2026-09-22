# Junior Mock Interview

## Format

- 10 minutes: introduction and experience calibration
- 25 minutes: technical questions
- 35 minutes: practical investigation
- 15 minutes: scenario and trade-offs
- 10 minutes: behavioral evidence
- 5 minutes: candidate questions

## Question pool

1. Explain linux foundations and help and complete this task: Identify the operating system and kernel, find authoritative local help, and explain how a command is resolved.
2. Explain files directories and links and complete this task: Find a file safely, identify its type and links, copy it while preserving metadata, then verify.
3. Explain text processing and redirection and complete this task: Extract a field, count repeated values, preserve errors separately, and explain every stage of a pipeline.
4. Explain users groups sudo and permissions and complete this task: Create a least-privilege account in a lab, grant group access, verify effective permissions, then remove it safely.
5. Explain processes jobs and signals and complete this task: Find a process, inspect its parent and files, request graceful termination, and prove the correct process stopped.
6. Explain systemd services and boot and complete this task: Diagnose a failed service from status, unit content, dependency state and logs without blindly restarting.
7. Explain packages software and repositories and complete this task: Identify which package owns a file, inspect its source, install safely, verify, and document removal.
8. Explain storage filesystems and mounts and complete this task: Diagnose a full filesystem and distinguish used blocks, deleted-open files, inodes and mount problems.
9. Explain networking dns and ssh and complete this task: Trace a connection from local address through route, name resolution, socket state and remote service.
10. Explain logs monitoring and resources and complete this task: Collect a five-minute evidence bundle that another administrator can use without exposing secrets.
11. Explain bash fundamentals and scheduling and complete this task: Write a small idempotent health script with validation, useful errors, logging and a meaningful exit code.
12. Explain security backup and troubleshooting and complete this task: Prove a backup can restore, confirm access controls, investigate one failure, recover and record evidence.

## Evaluation

Score accuracy, reasoning, safety, verification, recovery and communication. Deduct heavily for invented output, destructive guessing, exposed secrets, ignored authorization or unsupported certainty.

## Decision guide

- **Strong hire:** Accurate, evidence-led, safe and independently verifies results.
- **Hire:** Meets level with minor gaps and knows when to seek help.
- **Mixed:** Correct fragments but weak investigation, safety or ownership.
- **No hire:** Memorized claims, unsafe actions, inability to verify, or dishonesty.
