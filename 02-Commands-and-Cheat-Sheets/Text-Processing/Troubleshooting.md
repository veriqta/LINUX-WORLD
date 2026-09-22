# Text Processing: Troubleshooting

## Triage order

1. Record the exact symptom and first known occurrence.
2. Determine blast radius and business impact.
3. Check recent deployments, configuration, package, identity, network, and infrastructure changes.
4. Collect current state before restarting or editing.
5. Separate facts from hypotheses.
6. Test the least risky explanation first.
7. Mitigate impact, then continue root-cause analysis.
8. Verify recovery from the user's perspective.

## Common failure patterns

| Symptom | Investigation direction |
| --- | --- |
| Binary file matches | Use `file`, then select a binary-aware tool or `grep -a` only when treating bytes as text is intentional. |
| Broken columns | Inspect delimiters, quoted fields, whitespace, and locale. CSV with embedded delimiters needs a CSV parser. |
| Wrong sort order | Set a suitable locale, key, separator, and numeric or version mode. |
| sed or awk changes too much | Use a small fixture, print matching lines first, anchor patterns, and avoid in-place editing until verified. |
| Pipeline hides failure | Use `set -o pipefail` in Bash and inspect `PIPESTATUS` when debugging. |

## Useful questions

- What changed immediately before the failure?
- Is the problem limited to one user, process, host, zone, or distribution?
- Does the failure happen consistently?
- Is the command failing, or is the resulting system behavior wrong?
- What do exit status, standard error, service logs, kernel logs, and audit logs show?
- Which dependency is the first one known to be unhealthy?
- What evidence confirms recovery?

## Avoid these mistakes

- Repeating destructive commands without understanding the first failure
- Restarting before collecting volatile evidence
- Changing several variables at once
- Disabling security controls to make an error disappear
- Assuming a familiar command behaves identically on every distribution
- Treating a successful local test as proof of end-to-end recovery
- Publishing sensitive diagnostic output

## Escalation package

Provide the next responder with the timeline, impact, exact commands, sanitized output, relevant logs, recent changes, hypotheses tested, mitigation attempted, current state, and rollback status.

