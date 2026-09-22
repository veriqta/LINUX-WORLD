# Security Policy

## Purpose

This policy explains how to report a security vulnerability affecting Linux World repository code, scripts, workflows, examples, or downloadable assets.

## Report privately

Do not open a public issue, pull request, discussion, or social-media post for an unpatched vulnerability.

Use GitHub's private vulnerability reporting feature when it is available:

1. Open the Linux World repository on GitHub.
2. Select **Security**.
3. Select **Advisories**.
4. Select **Report a vulnerability**.
5. Provide the requested technical information.

If private vulnerability reporting is unavailable, contact the repository owner through the official [VERIQTA GitHub account](https://github.com/veriqta) and request a private reporting channel. Do not place vulnerability details in the initial public message.

## What to include

A useful report includes:

- A clear description of the vulnerability
- The affected file, script, workflow, release, or commit
- Preconditions required for exploitation
- Reproduction steps or a minimal proof of concept
- Actual and expected behavior
- Potential impact
- Suggested remediation, if known
- Whether the issue is already public
- The reporter's preferred attribution

Remove credentials, tokens, private keys, personal information, and unrelated confidential data.

## In scope

- Repository-owned scripts and utilities
- GitHub Actions workflows
- Published downloadable artifacts
- Unsafe instructions that create a direct and non-obvious security risk
- Accidental exposure of repository-controlled secrets
- Dependency vulnerabilities that materially affect repository-owned executable content

## Out of scope

- Vulnerabilities in Linux distributions or third-party products that should be reported upstream
- General hardening suggestions without a specific vulnerability
- Social engineering, phishing, spam, or denial-of-service testing
- Automated scanner reports without validation or demonstrated impact
- Vulnerabilities requiring access to systems not owned by the reporter
- Testing that disrupts services, destroys data, violates law, or affects other users

## Safe research expectations

Security research must be performed only on systems the researcher owns or is explicitly authorized to test. Do not access data belonging to others, maintain persistence, exfiltrate information, disrupt services, or exploit a vulnerability beyond what is necessary to demonstrate it safely.

This policy does not grant authorization to test GitHub, VERIQTA infrastructure, or any third-party system.

## Response process

Maintainers will aim to:

1. Acknowledge a complete report.
2. Assess severity and reproducibility.
3. Request additional information when necessary.
4. Develop and test a correction.
5. Coordinate disclosure when appropriate.
6. Credit the reporter if requested and appropriate.

Response and remediation times depend on severity, complexity, maintainer availability, and third-party dependencies. No fixed resolution deadline is promised.

## Disclosure

Reporters should allow reasonable time for investigation and remediation before public disclosure. Public disclosure should be coordinated with the maintainers whenever possible.

## Supported content

Security fixes are applied to the current repository version. Archived material may be retained for historical purposes and may not receive updates.
