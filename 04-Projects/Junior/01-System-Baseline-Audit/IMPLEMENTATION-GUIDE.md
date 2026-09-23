# System Baseline Audit: Implementation Guide

## Architecture first

Document actors, files, services, trust boundaries, inputs, outputs, privileged steps, and persistent state. Explain why every component exists.

## Stage 1: Baseline

Capture identity, host, operating system, resources, relevant packages, ports, services, mounts, and existing configuration.

## Stage 2: Prepare

Create only the required accounts, groups, paths, packages, and configuration. Set ownership and permissions explicitly.

## Stage 3: Implement

Build the core function in small stages. Use configuration variables, quoted paths, predictable output, and meaningful exit codes.

## Stage 4: Validate

Use native syntax validators, dry runs, test inputs, and read-only inspection. Keep known-good backups before replacing configuration.

## Stage 5: Operate

Add logs, health checks, scheduling or service management where required, bounded retention, and a status command.

## Stage 6: Recover

Inject only documented failures in the disposable lab. Restore service without broad permissions, uncontrolled deletion, or disabled security controls.

## Engineering requirements

- Use absolute paths in scheduled or service-managed automation.
- Use intentional Bash error handling.
- Quote expansions and separate options from path operands where supported.
- Validate numeric thresholds and supplied values.
- Prefer stable machine-readable sources.
- Detect missing optional utilities.
- Separate installation, configuration, runtime state, logs, and backups.

## Security design

Read-only by default; restrict report permissions; redact addresses, usernames, serials, and security-sensitive configuration.

## Failure design

Exercise these conditions: Missing tools, permission-denied fields, virtual versus physical hosts, containers, large output, and inconsistent command availability.

For each failure, record symptom, evidence, cause, recovery, verification, and prevention.

## Rollback and cleanup

List every file, package, account, unit, timer, firewall rule, mount, and process the project creates. Remove only those named resources.

