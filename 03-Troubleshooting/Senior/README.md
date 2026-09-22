# Senior Linux Troubleshooting

This section covers high-impact and ambiguous failures requiring blast-radius control, systems reasoning, and risk-managed mitigation.

## Cases

1. [Cascading Retry Storm](01-Cascading-Retry-Storm.md)
2. [Connection Pool Exhaustion](02-Connection-Pool-Exhaustion.md)
3. [Memory Pressure and OOM Selection](03-Memory-Pressure-and-OOM.md)
4. [CPU Throttling in cgroups](04-CPU-Throttling-in-Cgroups.md)
5. [Storage Latency Cascade](05-Storage-Latency-Cascade.md)
6. [Connection Tracking Table Exhaustion](06-Conntrack-Table-Exhaustion.md)
7. [Partial DNS Failure](07-Partial-DNS-Failure.md)
8. [Kernel Regression After Reboot](08-Kernel-Regression-After-Reboot.md)
9. [File Descriptor Exhaustion](09-File-Descriptor-Exhaustion.md)
10. [Time Synchronization Failure](10-Time-Synchronization-Failure.md)
11. [Network Queue and Packet Loss](11-Network-Queue-and-Packet-Loss.md)
12. [Failed Configuration Rollout Across a Fleet](12-Failed-Configuration-Rollout.md)

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

