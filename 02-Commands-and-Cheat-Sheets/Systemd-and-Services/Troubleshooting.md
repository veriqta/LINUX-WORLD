# systemd and Services: Troubleshooting

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
| Unit not found | Check the exact name, installed package, `list-unit-files`, aliases, and user versus system units. |
| Start request repeated too quickly | Read earlier logs, inspect restart policy and rate limits, then fix the underlying exit. |
| Service active but unavailable | Check bind address, socket, firewall, dependencies, health endpoint, and application logs. |
| Override ignored | Confirm drop-in location and effective configuration with `systemctl cat` and `systemctl show`. |
| Works manually, fails in systemd | Compare user, working directory, environment, PATH, permissions, capabilities, and filesystem protections. |

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

