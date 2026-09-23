# Certificate Renewal Automation

This guide explains certificate renewal automation as part of Linux defensive security. It connects the security objective to safe administration, verification, monitoring and recovery.

> Work only on systems that are owned or explicitly authorized. Use an isolated lab for disruptive testing. Never copy real credentials, customer data or unredacted incident evidence into public examples.

## Learning outcomes

- Explain how certificate renewal automation supports repeatable controls with safe failure and rollback.
- Identify threats to automation identities, desired state, evidence and change boundaries.
- Plan a controlled change with approval, evidence and rollback.
- Verify configuration, runtime enforcement, positive access, negative denial, logging and persistence.
- Recognize unsafe shortcuts and escalate conditions.

## Security problem and threat model

The protected scope includes automation identities, desired state, evidence and change boundaries. Important failure modes include fleet-wide mistakes, secret leakage, partial execution and false success. Consider external attackers, compromised user accounts, malicious or mistaken insiders, vulnerable services, failed automation and unavailable dependencies.

| Threat question | Required answer |
| --- | --- |
| Asset | What data, identity, service or control requires protection? |
| Actor | Who or what can reach or change it? |
| Trust boundary | Where does identity, privilege or data cross control domains? |
| Abuse path | How could confidentiality, integrity or availability fail? |
| Control | What prevents, detects, limits or helps recover from that failure? |
| Residual risk | What remains after the control is applied? |

## Key operating principles

- Protect private keys separately from certificates and configuration.
- Verify subject, SAN, issuer, chain, purpose, validity and revocation requirements.
- Test rotation before expiry and define compromise replacement and revocation steps.
- Preserve availability and recovery access while improving security.
- Treat missing evidence and untested assumptions as open risk.

## Components and evidence sources

Common evidence sources include versioned code, inventories, state and protected variables. Exact paths and service names differ by distribution and installed software. Record package versions and inspect local manual pages before relying on an example.

| Evidence | What it proves | Limitation |
| --- | --- | --- |
| Configuration | Intended control state | A file can exist without being loaded |
| Runtime state | What the kernel or service currently enforces | May not prove reboot persistence |
| Positive test | Authorized operation succeeds | Does not prove unauthorized access is denied |
| Negative test | Prohibited operation is blocked | Test identity and path must match the threat model |
| Logs and audit records | Decision and attribution are observable | Retention, clock and tampering gaps may exist |

## Safe implementation workflow

1. Define the security objective, owner, scope and measurable success criteria.
2. Inventory the existing state, dependencies, access path and recovery method.
3. Identify distribution, version, active security modules and local policy.
4. Preserve configuration and evidence with access controls appropriate to sensitivity.
5. Test the proposed control in an isolated or representative environment.
6. Validate syntax before reload, restart or reboot.
7. Apply the smallest change to a bounded target or rollout ring.
8. Test authorized behaviour and an explicit unauthorized case.
9. Inspect logs, performance, monitoring and persistence.
10. Record final state, remaining risk, exception, reviewer and rollback readiness.

## Inspection commands

Run only the commands that match the installed distribution and approved scope:

    shellcheck
    ansible-playbook --check
    systemd-analyze verify
    test scripts

These examples are primarily observational. Read command help and local manual pages, record exit status, and protect output that reveals users, paths, addresses or security policy.

## Distribution considerations

| Area | Debian and Ubuntu | RHEL-compatible and Fedora |
| --- | --- | --- |
| Packages | APT and dpkg | DNF or YUM and RPM |
| Mandatory access control | AppArmor commonly enabled on Ubuntu | SELinux commonly enabled and enforcing |
| Firewall frontend | UFW may be present; nftables remains available | firewalld commonly manages nftables |
| Service names and paths | Inspect package-provided units and defaults | Inspect package-provided units and defaults |
| Security advisories | Distribution security tracker and notices | Vendor security advisories and updateinfo |

Do not mix frontends that independently manage the same underlying policy without a documented design.

## Verification matrix

| Test | Method | Expected result | Evidence |
| --- | --- | --- | --- |
| Configuration | Parse or query effective configuration | Intended setting is valid and selected | Command output or protected record |
| Runtime | Query kernel, service or control state | Control is actively enforced | Runtime status |
| Positive | Act as an authorized identity | Required operation succeeds | Timestamped result |
| Negative | Act as an unauthorized identity | Operation is denied safely | Denial and related log |
| Logging | Trigger a safe representative event | Useful event reaches the approved destination | Event ID or query |
| Persistence | Reload or reboot in a lab | Control returns in the intended state | Post-start verification |
| Recovery | Exercise rollback or restore | Access and service health recover | Recovery evidence |

## Failure modes and rollback

- A valid configuration may still block a dependency or legitimate administrator.
- A control can exist but remain unloaded, shadowed or overridden.
- Logging can disclose secrets or exhaust storage when scope is too broad.
- Emergency bypasses can become permanent undocumented exceptions.
- Restart and reboot can expose persistence errors that reload testing missed.

Rollback must identify its trigger, decision owner, latest safe decision time, exact previous state, compatibility limits and post-rollback tests. Do not call a rollback successful until service, access, logging and security state are verified.

## Monitoring and operational ownership

Assign an owner for the control, alert, exception and review date. Monitor configuration drift, enforcement failures, repeated denials, bypass use, expired material and missing telemetry. Alerts should identify impact and required action rather than merely repeat a log line.

## Troubleshooting approach

1. Establish UTC time, symptom, affected scope and recent change.
2. Separate application failure from security-control denial.
3. Collect configuration, runtime and log evidence without weakening the control.
4. Create competing hypotheses and use the smallest discriminating test.
5. Correct the narrow cause, retest and preserve evidence.
6. Escalate when evidence integrity, legal scope, safety or blast radius is uncertain.

## Security checklist

- [ ] Asset, owner, threat and trust boundary are documented.
- [ ] Current state and recovery access are preserved.
- [ ] Change is approved and tested on a bounded target.
- [ ] Authorized and unauthorized behaviour are verified.
- [ ] Logs, persistence and monitoring are verified.
- [ ] Secrets and sensitive evidence are protected.
- [ ] Exceptions have an owner, justification and expiry.
- [ ] Rollback and final state are documented.

## Practice scenario

In an isolated VM, document the current certificate renewal automation state, identify one defensible improvement, predict its operational effect, implement it through a safe change, verify positive and negative cases, then restore the original state. Submit the threat model, commands, evidence, rollback result and remaining risk.

## Review questions

1. Which threat does certificate renewal automation reduce, and which threats remain?
2. Which runtime query proves the control is enforced?
3. What could lock out an administrator or interrupt the service?
4. What negative test demonstrates that unauthorized behaviour is denied?
5. What evidence would be required during an incident or audit?

## Official reference starting points

- https://www.kernel.org/doc/html/latest/admin-guide/

Confirm guidance against the supported distribution release and local policy before implementation.
