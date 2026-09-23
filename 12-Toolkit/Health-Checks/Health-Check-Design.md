# Health Check Design

This resource defines the Linux World health checks standard for health check design. It is written for students, system administrators, reviewers, and contributors who need predictable and safe operational tooling.

## Objectives

- Explain the purpose and operational boundary.
- Provide a repeatable implementation or review workflow.
- Make safety, privilege, evidence, and failure behavior explicit.
- Support both human use and automation.
- Produce results another qualified engineer can verify.

## Core requirements

1. Confirm the target, scope, environment, and authorization.
2. Use read-only behavior by default.
3. Validate every argument and configuration value before use.
4. Quote shell expansions and avoid evaluating untrusted input.
5. Apply timeouts to network and long-running operations.
6. Write sensitive output only to restricted locations.
7. Separate facts, warnings, failures, and recommendations.
8. Return documented exit codes.
9. Clean temporary resources on success, failure, and interruption.
10. Verify behavior with automated tests and controlled failure cases.

## Workflow

### Plan

Define the user problem, supported environments, inputs, outputs, privileges, side effects, limits, and expected failure modes. Select the simplest language that can solve the problem safely.

### Implement

Keep collection, evaluation, formatting, and state-changing actions separate. Prefer standard system interfaces and libraries. Do not silently install dependencies or enable services.

### Test

Test valid input, invalid input, missing dependencies, restricted permissions, empty data, malformed data, timeouts, interruptions, structured output, and cleanup. Tests must never rely on damaging the host.

### Review

Review input handling, quoting, temporary files, privilege use, secret exposure, output stability, compatibility, and documentation. Run static analysis and automated tests.

### Release

Assign a version, generate checksums, document changes, and retain reproducible source. Do not publish a tool that has not passed the repository validation command.

## Evidence checklist

- [ ] Help output describes required arguments.
- [ ] A working example is included.
- [ ] Expected output is included.
- [ ] Exit codes are documented and tested.
- [ ] Files read and written are documented.
- [ ] Required privileges are documented.
- [ ] Security and privacy risks are documented.
- [ ] Failure and timeout behavior are documented.
- [ ] Supported platforms are stated.
- [ ] Automated tests pass.

## Review questions

1. What can this tool change?
2. What happens when evidence is incomplete?
3. Can untrusted input become a command, path, query, or regular expression?
4. Can the output expose credentials, personal data, or internal infrastructure?
5. Does a zero exit code prove the intended operational result?
6. How does the tool behave when interrupted?
7. Can a learner reproduce the example in an isolated lab?
