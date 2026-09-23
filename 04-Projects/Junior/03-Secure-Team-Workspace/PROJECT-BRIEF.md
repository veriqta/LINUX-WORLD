# Secure Team Workspace: Project Brief

## Problem statement

Create a shared directory where a team can collaborate while preserving group ownership, controlled defaults, protected private areas, and auditable access.

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

No world-writable access; use named groups; default ACLs must match intended inheritance; protect sensitive subdirectories.

Also apply least privilege, safe quoting, restrictive file permissions, controlled input, trusted package sources, and no embedded secrets.

## Failure conditions

- New files with wrong group
- ACL mask surprises
- Renamed files
- Copied content
- Service accounts
- And offboarded members.

## Deliverables

- Workspace hierarchy
- Group model
- ACL policy
- Onboarding script
- Access matrix
- And recovery guide

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

