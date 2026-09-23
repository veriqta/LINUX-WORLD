# Systemd-Managed Web Service: Project Brief

## Problem statement

Deploy a simple local web application as a hardened systemd service with a dedicated account, environment file, health check, logging, and safe restart behavior.

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

Non-root runtime; restricted filesystem access; protected environment values; validated unit; limited capabilities.

Also apply least privilege, safe quoting, restrictive file permissions, controlled input, trusted package sources, and no embedded secrets.

## Failure conditions

- Port conflict
- Missing environment
- Crash loop
- Wrong working directory
- Permission denial
- Failed health check
- And reboot persistence.

## Deliverables

- Application files
- Unit file
- Environment example
- Install script
- Health check
- Rollback
- And runbook

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

