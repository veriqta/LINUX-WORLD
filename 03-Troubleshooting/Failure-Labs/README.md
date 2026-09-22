# Linux Failure Labs

These labs create controlled failures so readers can practice evidence collection, diagnosis, recovery, and verification.

## Mandatory safety

Read [Lab Safety](Lab-Safety.md) before every exercise. Use a disposable virtual machine or an isolated environment you own. Never run these labs on production, a shared host, or a system containing important data.

## Labs

1. [Permission Denied in a Lab Directory](01-Permission-Denied.md)
2. [Block Space Exhaustion on a Loopback Filesystem](02-Block-Space-Exhaustion.md)
3. [Inode Exhaustion on a Loopback Filesystem](03-Inode-Exhaustion.md)
4. [Failed systemd Service](04-Failed-systemd-Service.md)
5. [TCP Port Conflict](05-Port-Conflict.md)
6. [DNS Server Unreachable Without Changing Host DNS](06-DNS-Server-Unreachable.md)
7. [Process Signal Handling](07-Process-Signal-Handling.md)
8. [Deleted Log File Held Open](08-Deleted-Open-Log.md)
9. [cgroup Memory Limit](09-Cgroup-Memory-Limit.md)
10. [Firewall Drop in an Isolated Network Namespace](10-Network-Namespace-Firewall.md)
11. [Broken fstab Validation Without Reboot](11-Broken-fstab-Validation.md)
12. [SSH Private Key Permission Rejection](12-SSH-Private-Key-Permissions.md)

## Completion standard

A lab is complete only when the learner can explain the symptom, identify the failed layer, show the evidence, recover safely, verify the original operation, and remove all lab artifacts.

