# Users, Groups, and Access Management: Project Brief

## Problem statement

Design and implement local user lifecycle, role groups, shared access, password policy, sudo delegation, and offboarding on a disposable Linux server.

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

Least privilege; no shared accounts; validate sudo policy; protect home directories; record privileged changes.

Also apply least privilege, safe quoting, restrictive file permissions, controlled input, trusted package sources, and no embedded secrets.

## Failure conditions

- Duplicate IDs
- Stale groups
- Locked accounts
- Expired passwords
- Invalid shells
- Unsafe sudo rules
- And sessions surviving offboarding.

## Deliverables

- Account matrix
- Provisioning script
- Sudo policy
- Access tests
- Offboarding procedure
- And access review report

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

