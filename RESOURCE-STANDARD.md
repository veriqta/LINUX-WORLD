# Linux World Resource Standard

Every Linux World resource should be accurate, practical, safe, understandable, and useful in real engineering work.

## Core requirements

Technical material should:

- State its purpose and intended audience
- List prerequisites
- Explain concepts before relying on them
- Use tested commands and examples
- Identify supported distributions and versions
- Explain files, paths, options, and configuration changes
- Show expected output where it helps verification
- Include verification after material changes
- Explain common errors and recovery
- Include security and production considerations
- Provide cleanup or rollback instructions when relevant
- Link to authoritative upstream documentation

## Beginner resources

Beginner content must not assume unstated knowledge. It should explain the terminal, command syntax, paths, privileges, files, expected output, and verification steps needed to complete the task safely.

## Senior resources

Senior content should address internal behavior, failure modes, operational consequences, architecture decisions, trade-offs, scalability, reliability, security, performance, cost, maintainability, blast radius, observability, recovery, automation, and governance.

## Command pages

A command page should include:

- Purpose
- Syntax
- Important options
- Basic and production examples
- Expected output
- Exit status where relevant
- Common errors
- Safety warnings
- Related commands
- Distribution differences

## Labs

A lab should include:

- Objective
- Difficulty
- Estimated effort
- Prerequisites
- Safe environment requirements
- Starting state
- Tasks
- Verification
- Cleanup
- Separate solution or answer key

## Projects

A project should include:

- Problem statement
- Requirements
- Architecture
- Build steps
- Validation
- Security considerations
- Failure testing
- Troubleshooting
- Cleanup
- Extension challenges
- Completion criteria

## Troubleshooting cases

Troubleshooting content should follow this sequence:

1. Identify the symptom.
2. Confirm impact and blast radius.
3. Review recent changes.
4. Collect metrics, logs, traces, events, and system state.
5. Form and test hypotheses.
6. Narrow the failure domain.
7. Identify the root cause.
8. Mitigate safely.
9. Recover service.
10. Verify recovery.
11. Prevent recurrence.

## Security

- Use placeholders for secrets and credentials.
- Never publish private keys, tokens, passwords, or personal data.
- Explain privilege requirements.
- Prefer least privilege.
- Warn before destructive or service-affecting actions.
- Avoid insecure defaults unless the insecurity is the explicit subject of a controlled lab.
- Keep offensive techniques bounded to authorized, defensive education.

## Sources

Prefer primary and authoritative sources, including kernel documentation, manual pages, standards, upstream project documentation, and official distribution documentation.

Do not use copied third-party text. Paraphrase accurately, attribute when necessary, and respect all applicable licenses and usage terms.

## Style

- Use clear, direct language.
- Define technical terms.
- Keep headings descriptive.
- Use consistent command and filename formatting.
- Avoid unsupported claims and unnecessary hype.
- Distinguish tested facts from recommendations.
- State when output may vary.

## Validation

Before publication:

- Test commands in a clean environment.
- Confirm links.
- Check paths and filenames.
- Verify expected output.
- Review safety implications.
- Remove secrets and personal data.
- Confirm that examples can be cleaned up or reversed.
