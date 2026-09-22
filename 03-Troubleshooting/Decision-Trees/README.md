# Linux Troubleshooting Decision Trees

Decision trees help move from a visible symptom to the next safest discriminating test.

## Trees

1. [Service Will Not Start](01-Service-Will-Not-Start.md)
2. [Disk or Inodes Full](02-Disk-Full.md)
3. [SSH Unavailable](03-SSH-Unavailable.md)
4. [DNS Failure](04-DNS-Failure.md)
5. [High CPU Usage](05-High-CPU.md)
6. [Memory Pressure](06-Memory-Pressure.md)
7. [Network Connection Failure](07-Network-Connection-Failure.md)
8. [Slow Linux System](08-Slow-System.md)
9. [Filesystem Will Not Mount](09-Filesystem-Will-Not-Mount.md)
10. [Server Will Not Boot](10-Server-Will-Not-Boot.md)

## Rules

- Confirm impact and collect volatile evidence first.
- Follow one branch at a time.
- Return to the last confirmed fact when evidence contradicts a branch.
- Stop before destructive, access-changing, or data-risking actions.
- A decision tree narrows investigation. It does not replace system knowledge or authorization.

