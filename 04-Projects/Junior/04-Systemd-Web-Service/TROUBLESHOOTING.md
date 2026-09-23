# Systemd-Managed Web Service: Troubleshooting

## Investigation order

1. Record the exact command, error, exit status, time, user, and host.
2. Confirm the local configuration exists and has safe permissions.
3. Check required commands with command -v.
4. Run the failing script with Bash tracing only when no secret can be exposed.
5. Inspect project logs and generated reports.
6. Compare actual ownership, mode, process, service, port, and path with the architecture.
7. Test one hypothesis at a time.
8. Run verification again after recovery.

## Expected failures

The project explicitly tests port conflict, missing files, permission denial, crash loop, and failed health check.

## Common errors

| Symptom | Check |
| --- | --- |
| Permission denied | Identity, parent-directory traversal, ownership, mode, ACL, mount options, and security policy |
| Command not found | Package, PATH, spelling, distribution, and optional dependency |
| File not found | Current directory, configuration value, quoting, case, and cleanup state |
| Verification fails | Earlier script exit status, logs, expected path, and environment values |
| Test changes real state | Stop immediately, restore the snapshot, and review the configured lab boundary |

## Escalate

Stop when data integrity, administrative access, security controls, or a non-lab system could be affected. Preserve sanitized evidence and request review.

