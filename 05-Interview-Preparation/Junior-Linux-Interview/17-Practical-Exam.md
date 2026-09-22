# Junior Linux Practical Exam

## Rules

Use an authorized disposable lab. Internet access, documentation policy and distributions must be declared before the exam. Back up configuration before editing. Never weaken security to make a task pass.

## Candidate instructions

Read every task first. Record assumptions. Use native validation before reload or restart. Preserve evidence. Stop if the target is ambiguous. Complete cleanup where requested.

## Tasks

### Task 1: Linux Foundations and Help

Identify the operating system and kernel, find authoritative local help, and explain how a command is resolved.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 2: Files Directories and Links

Find a file safely, identify its type and links, copy it while preserving metadata, then verify.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 3: Text Processing and Redirection

Extract a field, count repeated values, preserve errors separately, and explain every stage of a pipeline.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 4: Users Groups Sudo and Permissions

Create a least-privilege account in a lab, grant group access, verify effective permissions, then remove it safely.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 5: Processes Jobs and Signals

Find a process, inspect its parent and files, request graceful termination, and prove the correct process stopped.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 6: Systemd Services and Boot

Diagnose a failed service from status, unit content, dependency state and logs without blindly restarting.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 7: Packages Software and Repositories

Identify which package owns a file, inspect its source, install safely, verify, and document removal.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 8: Storage Filesystems and Mounts

Diagnose a full filesystem and distinguish used blocks, deleted-open files, inodes and mount problems.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 9: Networking DNS and SSH

Trace a connection from local address through route, name resolution, socket state and remote service.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 10: Logs Monitoring and Resources

Collect a five-minute evidence bundle that another administrator can use without exposing secrets.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 11: Bash Fundamentals and Scheduling

Write a small idempotent health script with validation, useful errors, logging and a meaningful exit code.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

### Task 12: Security Backup and Troubleshooting

Prove a backup can restore, confirm access controls, investigate one failure, recover and record evidence.

**Evidence required:** before state, commands or code, after state, negative test, failure and recovery note, cleanup result.

**Points:** implementation 4, verification 2, safety 2, explanation 1, cleanup 1.

## Scoring

Maximum: 120 points. A task receives no safety points when the candidate cannot explain its impact. Exposed secrets, work on an unauthorized target or reckless destructive action causes automatic review regardless of numeric score.

## Examiner validation

Reboot where persistence matters, test as the intended unprivileged identity, use an independent end-to-end check, inspect logs, and confirm rollback or cleanup.
