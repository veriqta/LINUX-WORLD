# Mid-Level Linux Troubleshooting

This section covers cross-layer failures requiring comparison, historical context, and controlled change.

## Cases

1. [Intermittent Service Failure](01-Intermittent-Service-Failure.md)
2. [systemd Dependency Failure](02-Systemd-Dependency-Failure.md)
3. [High Load With Low CPU Usage](03-High-Load-Low-CPU.md)
4. [Inode Exhaustion](04-Inode-Exhaustion.md)
5. [LVM Capacity Expansion](05-LVM-Volume-Expansion.md)
6. [TLS Certificate Failure](06-TLS-Certificate-Failure.md)
7. [Firewall Rule Blocks Traffic](07-Firewall-Rule-Blocks-Traffic.md)
8. [Scheduled Job Works Manually but Fails in Cron](08-Cron-Job-Works-Manually.md)
9. [Log Rotation Breaks Application Logging](09-Log-Rotation-Breaks-Writes.md)
10. [Package Upgrade Regression](10-Package-Upgrade-Regression.md)
11. [NFS Mount Hangs](11-NFS-Mount-Hangs.md)
12. [Container Host Resource Pressure](12-Container-Host-Resource-Pressure.md)

## Expected approach

- Define the observable symptom.
- Identify impact and blast radius.
- Build a timeline and check recent changes.
- Capture evidence before restarting.
- Test one hypothesis at a time.
- Choose a reversible mitigation.
- Verify from the user's perspective.
- Document prevention and escalation.

## Boundary

Experience level does not grant authorization. Use privileged or invasive commands only on systems you are permitted to administer.

