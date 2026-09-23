# Hardened SSH Server: Project Brief

## Problem statement

Configure key-based administrative SSH access with validated policy, controlled users, logging, firewall rules, and a tested recovery path.

## Environment record

Document distribution, release, kernel, shell, init system, CPU, memory, storage, network mode, installed dependencies, and whether the system is a VM, container, or physical host.

## Functional requirements

1. Provide an explicit setup procedure.
2. Separate configuration from executable logic.
3. Validate required users, groups, paths, packages, and services.
4. Produce clear success and failure messages.
5. Return meaningful exit status from automation.
6. Be safe to run more than once where practical.
7. Record changes and provide complete cleanup.
8. Include a health or verification command.

## Security requirements

Keep a working session; validate before reload; no root password login; protect private keys; restrict source networks where appropriate.

Also apply least privilege, safe quoting, restrictive file permissions, controlled input, trusted package sources, and no embedded secrets.

## Failure conditions

- Wrong key permissions
- Host key change
- Locked account
- Firewall lockout
- Invalid config
- Expired key
- And lost network path.

## Deliverables

- Threat model
- Sshd drop-in
- Authorized-key process
- Firewall policy
- Tests
- Backup
- And console recovery guide

## Milestones

1. Define requirements and baseline.
2. Draw the component and access model.
3. Build the smallest functional version.
4. Add validation, logging, and error handling.
5. Add security controls.
6. Run failure and recovery tests.
7. Write operations and cleanup guidance.
8. Rebuild from documentation.

## Definition of done

Every acceptance test passes, cleanup is verified, no secret is committed, documentation matches implementation, and another learner can reproduce the project.

