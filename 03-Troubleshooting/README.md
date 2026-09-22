# Linux Troubleshooting

A public, production-aware collection for diagnosing Linux problems from first symptoms through recovery and prevention.

This section teaches a repeatable investigation process. It does not encourage random command execution, premature restarts, or changing several variables at once.

## Start here

1. Read the [Troubleshooting Methodology](Troubleshooting-Methodology.md).
2. Select the experience level that matches the problem and your current skills.
3. Use a [Decision Tree](Decision-Trees/) when the symptom is known but the cause is not.
4. Practice safely in [Failure Labs](Failure-Labs/).
5. Study realistic investigations in [Production Case Files](Production-Case-Files/).

## Sections

| Section | Purpose |
| --- | --- |
| [Junior](Junior/) | Foundational diagnosis of files, access, processes, services, packages, disks, logs, DNS, networking, and SSH |
| [Mid-Level](Mid-Level/) | Cross-layer problems involving dependencies, resource pressure, storage, certificates, firewalls, scheduled work, and intermittent failures |
| [Senior](Senior/) | Complex production failures involving saturation, feedback loops, cgroups, kernel behavior, distributed dependencies, and risk-managed mitigation |
| [Production Case Files](Production-Case-Files/) | Full incident narratives with timeline, evidence, hypotheses, root cause, recovery, and prevention |
| [Decision Trees](Decision-Trees/) | Symptom-first investigation routes for common Linux failures |
| [Failure Labs](Failure-Labs/) | Controlled exercises that create, diagnose, recover from, and verify failures |

## Troubleshooting levels

The levels describe investigation complexity, not job titles.

### Junior

- Uses a defined checklist safely
- Reads command output and exit status
- Identifies the affected service or resource
- Collects useful evidence before escalation
- Makes limited, reversible changes

### Mid-Level

- Connects symptoms across system layers
- Builds and tests competing hypotheses
- Distinguishes cause from consequence
- Uses historical evidence and controlled comparisons
- Plans rollback and validates dependencies

### Senior

- Manages uncertainty during high-impact incidents
- Controls blast radius before deep diagnosis
- Analyzes queues, limits, feedback loops, and failure propagation
- Chooses mitigation under availability and data-integrity constraints
- Turns incident evidence into durable engineering improvements

## Investigation model

```text
Symptom -> Impact -> Timeline -> Recent changes -> Evidence
        -> Hypotheses -> Safe tests -> Root cause -> Mitigation
        -> Recovery -> Verification -> Prevention
```

## First five minutes

Record context before state changes:

```bash
date --iso-8601=seconds
hostname
id
uptime
uname -a
```

Then determine:

- What is failing?
- Who or what is affected?
- When did it begin?
- What changed?
- Is the problem growing?
- Is data integrity at risk?
- Is a safe rollback or failover available?

## Evidence handling

- Use a restricted directory, such as one created after `umask 077`.
- Record commands and timestamps.
- Preserve relevant logs before rotation or restart.
- Redact passwords, tokens, keys, session cookies, personal data, customer payloads, internal addresses, and secrets.
- Do not upload production evidence to public issues.
- Keep original artifacts read-only when forensic integrity matters.

## Safety boundaries

- Run failure labs only on disposable systems you own or are authorized to test.
- Never inject failures into production.
- Confirm host, account, namespace, path, device, service, and rollback before changes.
- Prefer observation, validation, dry runs, and reversible mitigation.
- Do not disable SELinux, AppArmor, authentication, encryption, or firewall policy merely to hide a symptom.
- Do not run filesystem repair against a mounted filesystem unless the filesystem documentation explicitly allows it.
- Do not format, repartition, or overwrite a device until identity and backup status are independently verified.

## Related sections

- Use [Commands and Cheat Sheets](../02-Commands-and-Cheat-Sheets/) for command syntax.
- Use [Labs](../07-Labs/) for broader guided and challenge exercises.
- Use [Production Operations](../11-Production-Operations/) for runbooks, incident response, and postmortems.

