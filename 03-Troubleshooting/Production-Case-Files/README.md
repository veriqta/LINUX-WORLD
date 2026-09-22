# Production Case Files

Production case files turn troubleshooting theory into reviewable investigations. Each case separates symptom, trigger, root cause, contributors, mitigation, recovery, and prevention.

## Case files

1. [Inode Exhaustion on an Application Host](01-Inode-Exhaustion-on-Application-Host.md)
2. [Expired Intermediate Certificate Breaks TLS](02-Expired-Intermediate-Certificate.md)
3. [Deleted Log File Held Open](03-Deleted-Log-File-Held-Open.md)
4. [systemd Override Causes a Restart Loop](04-Systemd-Override-Causes-Restart-Loop.md)
5. [DNS TCP Fallback Blocked by Firewall](05-DNS-TCP-Fallback-Blocked.md)
6. [cgroup Memory Limit Triggers OOM After Deployment](06-Cgroup-Memory-Limit-After-Deployment.md)
7. [Time Drift Breaks Authentication](07-Time-Drift-Breaks-Authentication.md)
8. [Storage Latency Causes a Queue Cascade](08-Storage-Latency-Causes-Queue-Cascade.md)

## Supporting file

- [Case File Template](Case-File-Template.md)

## Reading method

For each case, pause before the root-cause section and write:

1. The known facts
2. At least two hypotheses
3. The next safest test
4. A mitigation that limits blast radius
5. Recovery signals

