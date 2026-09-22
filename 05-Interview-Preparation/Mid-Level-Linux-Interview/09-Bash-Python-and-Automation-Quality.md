# Bash Python and Automation Quality

> Level: Mid-Level System Administrator

## Scope

idempotence, input validation, traps, temporary files, concurrency, locking, structured output, testing and secret handling.

## Interview questions and model answers

### 1. What should a strong Mid-Level candidate understand about Bash Python and Automation Quality?

A strong answer connects idempotence, input validation, traps, temporary files, concurrency, locking, structured output, testing and secret handling. It defines each idea, explains how the pieces interact, and finishes with a way to observe the real system rather than relying on memory.

### 2. Which commands would you use first?

Begin with read-only evidence: `shellcheck SCRIPT; bash -x SCRIPT; mktemp; flock; timeout; jq -e; python3 -m venv VENV; python3 -m unittest`. Select only the commands relevant to the symptom, narrow their scope, record time and host context, and explain what result would support or reject the current hypothesis.

### 3. How do you avoid causing harm while investigating?

Confirm the target and authorization, capture the current state, prefer read-only inspection, understand privilege and side effects, change one variable at a time, define rollback, and verify the user-visible result.

### 4. What weak answers or dangerous habits should an interviewer notice?

Warning signs include Using predictable temp files, partial writes, silent failures, embedding secrets, retry storms. A strong candidate recognizes uncertainty, refuses unsafe shortcuts, and proposes a bounded test.

### 5. How should the candidate troubleshoot this domain?

State expected versus observed behavior, define scope and start time, inspect recent changes, collect domain evidence, form a falsifiable hypothesis, run the smallest discriminating test, mitigate, recover, verify end to end, and prevent recurrence.

### 6. What security points belong in the answer?

Discuss least privilege, ownership of sensitive data, trust boundaries, validation of untrusted input, auditability, patch state, secret handling, network exposure, and a safe emergency path. Security controls must have tests.

### 7. What reliability points belong in the answer?

Identify dependencies and state, detection signals, timeouts, restart or retry behavior, failure containment, persistence across reboot, rollback, backup or recovery needs, and the evidence that proves recovery.

### 8. How do you explain distribution differences?

Separate portable Linux concepts from implementation details. Identify the package manager, filesystem layout, service defaults, firewall tooling, security module and version before choosing commands. Never force one distribution's command onto another.

### 9. How should automation be evaluated?

Check input validation, quoting, idempotence, atomic changes, concurrency control, meaningful exit codes, logging, dry-run or check support, secret handling, tests, rollback and cleanup. Re-running automation should not corrupt correct state.

### 10. What evidence makes the answer credible?

Use timestamped command output, effective configuration, service and dependency state, logs, metrics, a negative test, a recovery test and a sanitized record of the change. Screenshots alone are usually weaker than reproducible text.

### 11. Hands-on prompt

Turn a fragile maintenance command sequence into an idempotent, observable and testable automation tool. Require the candidate to narrate risk, select evidence, perform the work in an isolated lab, verify the intended condition, test one failure and restore the original state.

### 12. Follow-up questions

Ask what could invalidate the conclusion, what changes at larger scale, what should be monitored, how to roll back, what remains unknown, and what the candidate would document for the next administrator.

## Practical evaluation

**Task:** Turn a fragile maintenance command sequence into an idempotent, observable and testable automation tool.

**Pass standard:** The candidate protects the environment, explains the commands, reaches the required state, verifies it independently, handles one controlled failure, and leaves a clean record.

## Scoring

| Area | Points |
| --- | ---: |
| Technical accuracy | 30 |
| Evidence and troubleshooting | 25 |
| Safety and security | 20 |
| Verification and recovery | 15 |
| Communication | 10 |
