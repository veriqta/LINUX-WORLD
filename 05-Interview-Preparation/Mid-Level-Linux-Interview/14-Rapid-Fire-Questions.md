# Mid-Level Rapid-Fire Questions

Each answer should take 30 to 90 seconds. Follow every definition with an example or verification method.

### 1. Define the core purpose of Boot Kernel and Systemd Diagnostics.

**Answer:** Connect it to firmware, bootloader, kernel command line.

### 2. Name a read-only inspection command for Boot Kernel and Systemd Diagnostics.

**Answer:** One valid set is: journalctl -b -1; cat /proc/cmdline. Explain the output.

### 3. Name one dangerous mistake in Boot Kernel and Systemd Diagnostics.

**Answer:** Masking the root cause with repeated reboots.

### 4. What must be verified after a change in Boot Kernel and Systemd Diagnostics?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 5. What should be documented for Boot Kernel and Systemd Diagnostics?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 6. Define the core purpose of Advanced Identity PAM ACL and Sudo.

**Answer:** Connect it to NSS, PAM, UID consistency.

### 7. Name a read-only inspection command for Advanced Identity PAM ACL and Sudo.

**Answer:** One valid set is: getent passwd USER; id USER. Explain the output.

### 8. Name one dangerous mistake in Advanced Identity PAM ACL and Sudo.

**Answer:** Ignoring ACL mask.

### 9. What must be verified after a change in Advanced Identity PAM ACL and Sudo?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 10. What should be documented for Advanced Identity PAM ACL and Sudo?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 11. Define the core purpose of Systemd Service Engineering.

**Answer:** Connect it to unit dependency graph, readiness, restart policy.

### 12. Name a read-only inspection command for Systemd Service Engineering.

**Answer:** One valid set is: systemctl show UNIT; systemctl edit UNIT. Explain the output.

### 13. Name one dangerous mistake in Systemd Service Engineering.

**Answer:** Crash loops.

### 14. What must be verified after a change in Systemd Service Engineering?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 15. What should be documented for Systemd Service Engineering?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 16. Define the core purpose of Storage LVM RAID and Filesystems.

**Answer:** Connect it to LVM layers, RAID levels, alignment.

### 17. Name a read-only inspection command for Storage LVM RAID and Filesystems.

**Answer:** One valid set is: pvs; vgs. Explain the output.

### 18. Name one dangerous mistake in Storage LVM RAID and Filesystems.

**Answer:** Shrinking unsupported filesystems.

### 19. What must be verified after a change in Storage LVM RAID and Filesystems?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 20. What should be documented for Storage LVM RAID and Filesystems?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 21. Define the core purpose of Networking Routing Firewall and DNS.

**Answer:** Connect it to CIDR, policy routing, neighbor discovery.

### 22. Name a read-only inspection command for Networking Routing Firewall and DNS.

**Answer:** One valid set is: ip route get ADDRESS; ip rule. Explain the output.

### 23. Name one dangerous mistake in Networking Routing Firewall and DNS.

**Answer:** Capturing secrets.

### 24. What must be verified after a change in Networking Routing Firewall and DNS?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 25. What should be documented for Networking Routing Firewall and DNS?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 26. Define the core purpose of Performance CPU Memory and IO.

**Answer:** Connect it to load, run queue, context switch.

### 27. Name a read-only inspection command for Performance CPU Memory and IO.

**Answer:** One valid set is: mpstat -P ALL 1; pidstat 1. Explain the output.

### 28. Name one dangerous mistake in Performance CPU Memory and IO.

**Answer:** Tuning before measuring.

### 29. What must be verified after a change in Performance CPU Memory and IO?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 30. What should be documented for Performance CPU Memory and IO?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 31. Define the core purpose of Logging Observability and Time.

**Answer:** Connect it to structured logs, journald persistence, rsyslog routing.

### 32. Name a read-only inspection command for Logging Observability and Time.

**Answer:** One valid set is: journalctl --list-boots; journalctl -o json. Explain the output.

### 33. Name one dangerous mistake in Logging Observability and Time.

**Answer:** Losing evidence during rotation.

### 34. What must be verified after a change in Logging Observability and Time?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 35. What should be documented for Logging Observability and Time?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 36. Define the core purpose of Security Hardening SELinux and AppArmor.

**Answer:** Connect it to MAC versus DAC, labels, domains.

### 37. Name a read-only inspection command for Security Hardening SELinux and AppArmor.

**Answer:** One valid set is: getenforce; ls -Z PATH. Explain the output.

### 38. Name one dangerous mistake in Security Hardening SELinux and AppArmor.

**Answer:** Disabling enforcement.

### 39. What must be verified after a change in Security Hardening SELinux and AppArmor?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 40. What should be documented for Security Hardening SELinux and AppArmor?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 41. Define the core purpose of Bash Python and Automation Quality.

**Answer:** Connect it to idempotence, input validation, traps.

### 42. Name a read-only inspection command for Bash Python and Automation Quality.

**Answer:** One valid set is: shellcheck SCRIPT; bash -x SCRIPT. Explain the output.

### 43. Name one dangerous mistake in Bash Python and Automation Quality.

**Answer:** Using predictable temp files.

### 44. What must be verified after a change in Bash Python and Automation Quality?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 45. What should be documented for Bash Python and Automation Quality?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 46. Define the core purpose of Backup Restore and Disaster Recovery.

**Answer:** Connect it to RPO, RTO, crash consistency.

### 47. Name a read-only inspection command for Backup Restore and Disaster Recovery.

**Answer:** One valid set is: rsync -aHAX --numeric-ids; tar --xattrs --acls. Explain the output.

### 48. Name one dangerous mistake in Backup Restore and Disaster Recovery.

**Answer:** Measuring backup success but not restore success.

### 49. What must be verified after a change in Backup Restore and Disaster Recovery?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 50. What should be documented for Backup Restore and Disaster Recovery?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 51. Define the core purpose of Containers Namespaces and Cgroups.

**Answer:** Connect it to image layers, container process model, namespaces.

### 52. Name a read-only inspection command for Containers Namespaces and Cgroups.

**Answer:** One valid set is: lsns; nsenter. Explain the output.

### 53. Name one dangerous mistake in Containers Namespaces and Cgroups.

**Answer:** Treating containers as VMs.

### 54. What must be verified after a change in Containers Namespaces and Cgroups?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 55. What should be documented for Containers Namespaces and Cgroups?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 56. Define the core purpose of Incident Troubleshooting and Change.

**Answer:** Connect it to impact, timeline, recent change.

### 57. Name a read-only inspection command for Incident Troubleshooting and Change.

**Answer:** One valid set is: date -Is; uptime -s. Explain the output.

### 58. Name one dangerous mistake in Incident Troubleshooting and Change.

**Answer:** Changing multiple variables.

### 59. What must be verified after a change in Incident Troubleshooting and Change?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 60. What should be documented for Incident Troubleshooting and Change?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.
