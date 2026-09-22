# Senior Rapid-Fire Questions

Each answer should take 30 to 90 seconds. Follow every definition with an example or verification method.

### 1. Define the core purpose of Linux Architecture and Kernel Behavior.

**Answer:** Connect it to system calls, scheduler, virtual memory.

### 2. Name a read-only inspection command for Linux Architecture and Kernel Behavior.

**Answer:** One valid set is: strace -f -ttT -p PID; perf top. Explain the output.

### 3. Name one dangerous mistake in Linux Architecture and Kernel Behavior.

**Answer:** Changing global kernel tunables without workload evidence.

### 4. What must be verified after a change in Linux Architecture and Kernel Behavior?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 5. What should be documented for Linux Architecture and Kernel Behavior?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 6. Define the core purpose of Fleet Lifecycle and Configuration Governance.

**Answer:** Connect it to golden image, bootstrap, desired state.

### 7. Name a read-only inspection command for Fleet Lifecycle and Configuration Governance.

**Answer:** One valid set is: systemd-delta; rpm -Va. Explain the output.

### 8. Name one dangerous mistake in Fleet Lifecycle and Configuration Governance.

**Answer:** Snowflake hosts.

### 9. What must be verified after a change in Fleet Lifecycle and Configuration Governance?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 10. What should be documented for Fleet Lifecycle and Configuration Governance?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 11. Define the core purpose of Reliability SLO and Capacity Engineering.

**Answer:** Connect it to SLI, SLO, error budget.

### 12. Name a read-only inspection command for Reliability SLO and Capacity Engineering.

**Answer:** One valid set is: sar; pidstat. Explain the output.

### 13. Name one dangerous mistake in Reliability SLO and Capacity Engineering.

**Answer:** Averages hiding tails.

### 14. What must be verified after a change in Reliability SLO and Capacity Engineering?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 15. What should be documented for Reliability SLO and Capacity Engineering?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 16. Define the core purpose of Deep Performance and Resource Isolation.

**Answer:** Connect it to scheduler classes, CPU affinity, NUMA locality.

### 17. Name a read-only inspection command for Deep Performance and Resource Isolation.

**Answer:** One valid set is: ps -eLo pid,tid,psr,cls,rtprio,ni,stat,comm; taskset -cp PID. Explain the output.

### 18. Name one dangerous mistake in Deep Performance and Resource Isolation.

**Answer:** Benchmarking unlike workloads.

### 19. What must be verified after a change in Deep Performance and Resource Isolation?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 20. What should be documented for Deep Performance and Resource Isolation?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 21. Define the core purpose of Network Architecture and Failure Analysis.

**Answer:** Connect it to routing domains, ECMP, conntrack.

### 22. Name a read-only inspection command for Network Architecture and Failure Analysis.

**Answer:** One valid set is: ip route get; ss -ti. Explain the output.

### 23. Name one dangerous mistake in Network Architecture and Failure Analysis.

**Answer:** One-sided captures.

### 24. What must be verified after a change in Network Architecture and Failure Analysis?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 25. What should be documented for Network Architecture and Failure Analysis?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 26. Define the core purpose of Storage Architecture and Data Integrity.

**Answer:** Connect it to block stack, multipath, RAID.

### 27. Name a read-only inspection command for Storage Architecture and Data Integrity.

**Answer:** One valid set is: lsblk -o NAME,KNAME,TYPE,FSTYPE,MOUNTPOINTS; multipath -ll. Explain the output.

### 28. Name one dangerous mistake in Storage Architecture and Data Integrity.

**Answer:** Assuming fsync means durable through every layer.

### 29. What must be verified after a change in Storage Architecture and Data Integrity?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 30. What should be documented for Storage Architecture and Data Integrity?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 31. Define the core purpose of Security Architecture and Host Defense.

**Answer:** Connect it to identity boundary, privilege path, secure boot.

### 32. Name a read-only inspection command for Security Architecture and Host Defense.

**Answer:** One valid set is: mokutil --sb-state; sysctl. Explain the output.

### 33. Name one dangerous mistake in Security Architecture and Host Defense.

**Answer:** Compliance-only controls.

### 34. What must be verified after a change in Security Architecture and Host Defense?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 35. What should be documented for Security Architecture and Host Defense?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 36. Define the core purpose of Observability and Evidence Strategy.

**Answer:** Connect it to telemetry purpose, RED and USE methods, high cardinality.

### 37. Name a read-only inspection command for Observability and Evidence Strategy.

**Answer:** One valid set is: journalctl -o json; coredumpctl info. Explain the output.

### 38. Name one dangerous mistake in Observability and Evidence Strategy.

**Answer:** Collecting everything.

### 39. What must be verified after a change in Observability and Evidence Strategy?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 40. What should be documented for Observability and Evidence Strategy?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 41. Define the core purpose of Automation Platform and Safe Delivery.

**Answer:** Connect it to control plane, convergence, idempotence.

### 42. Name a read-only inspection command for Automation Platform and Safe Delivery.

**Answer:** One valid set is: ansible-playbook --check --diff; systemd-analyze verify. Explain the output.

### 43. Name one dangerous mistake in Automation Platform and Safe Delivery.

**Answer:** Automation at fleet speed without blast-radius controls.

### 44. What must be verified after a change in Automation Platform and Safe Delivery?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 45. What should be documented for Automation Platform and Safe Delivery?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 46. Define the core purpose of Distributed Systems on Linux.

**Answer:** Connect it to timeouts, retries, backoff.

### 47. Name a read-only inspection command for Distributed Systems on Linux.

**Answer:** One valid set is: ss -ti; tc netem in a lab. Explain the output.

### 48. Name one dangerous mistake in Distributed Systems on Linux.

**Answer:** Cascading retries.

### 49. What must be verified after a change in Distributed Systems on Linux?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 50. What should be documented for Distributed Systems on Linux?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 51. Define the core purpose of Incident Command and Recovery.

**Answer:** Connect it to severity, roles, timeline.

### 52. Name a read-only inspection command for Incident Command and Recovery.

**Answer:** One valid set is: date -u +%FT%TZ; last -x. Explain the output.

### 53. Name one dangerous mistake in Incident Command and Recovery.

**Answer:** Hero debugging.

### 54. What must be verified after a change in Incident Command and Recovery?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 55. What should be documented for Incident Command and Recovery?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 56. Define the core purpose of Architecture Leadership and Trade-offs.

**Answer:** Connect it to requirements, constraints, failure domains.

### 57. Name a read-only inspection command for Architecture Leadership and Trade-offs.

**Answer:** One valid set is: architecture decision records, threat models, SLO documents, capacity models, game-day reports and runbooks. Explain the output.

### 58. Name one dangerous mistake in Architecture Leadership and Trade-offs.

**Answer:** Tool-first design.

### 59. What must be verified after a change in Architecture Leadership and Trade-offs?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 60. What should be documented for Architecture Leadership and Trade-offs?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.
