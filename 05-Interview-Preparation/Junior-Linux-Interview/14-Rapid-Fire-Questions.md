# Junior Rapid-Fire Questions

Each answer should take 30 to 90 seconds. Follow every definition with an example or verification method.

### 1. Define the core purpose of Linux Foundations and Help.

**Answer:** Connect it to kernel, distribution, shell.

### 2. Name a read-only inspection command for Linux Foundations and Help.

**Answer:** One valid set is: uname -a; cat /etc/os-release. Explain the output.

### 3. Name one dangerous mistake in Linux Foundations and Help.

**Answer:** Confusing the kernel with a distribution.

### 4. What must be verified after a change in Linux Foundations and Help?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 5. What should be documented for Linux Foundations and Help?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 6. Define the core purpose of Files Directories and Links.

**Answer:** Connect it to absolute and relative paths, inode, file type.

### 7. Name a read-only inspection command for Files Directories and Links.

**Answer:** One valid set is: pwd; ls -la. Explain the output.

### 8. Name one dangerous mistake in Files Directories and Links.

**Answer:** Using rm recursively against an unchecked path.

### 9. What must be verified after a change in Files Directories and Links?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 10. What should be documented for Files Directories and Links?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 11. Define the core purpose of Text Processing and Redirection.

**Answer:** Connect it to standard input, output, error.

### 12. Name a read-only inspection command for Text Processing and Redirection.

**Answer:** One valid set is: grep -n PATTERN FILE; cut -d: -f1 /etc/passwd. Explain the output.

### 13. Name one dangerous mistake in Text Processing and Redirection.

**Answer:** Using grep when structured parsing is required.

### 14. What must be verified after a change in Text Processing and Redirection?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 15. What should be documented for Text Processing and Redirection?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 16. Define the core purpose of Users Groups Sudo and Permissions.

**Answer:** Connect it to UID, GID, primary and supplementary groups.

### 17. Name a read-only inspection command for Users Groups Sudo and Permissions.

**Answer:** One valid set is: id USER; getent passwd USER. Explain the output.

### 18. Name one dangerous mistake in Users Groups Sudo and Permissions.

**Answer:** Using chmod 777.

### 19. What must be verified after a change in Users Groups Sudo and Permissions?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 20. What should be documented for Users Groups Sudo and Permissions?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 21. Define the core purpose of Processes Jobs and Signals.

**Answer:** Connect it to PID, PPID, process state.

### 22. Name a read-only inspection command for Processes Jobs and Signals.

**Answer:** One valid set is: ps -ef; ps -o pid,ppid,stat,ni,cmd -p PID. Explain the output.

### 23. Name one dangerous mistake in Processes Jobs and Signals.

**Answer:** Starting with SIGKILL.

### 24. What must be verified after a change in Processes Jobs and Signals?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 25. What should be documented for Processes Jobs and Signals?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 26. Define the core purpose of Systemd Services and Boot.

**Answer:** Connect it to unit, target, dependency.

### 27. Name a read-only inspection command for Systemd Services and Boot.

**Answer:** One valid set is: systemctl status UNIT; systemctl is-enabled UNIT. Explain the output.

### 28. Name one dangerous mistake in Systemd Services and Boot.

**Answer:** Editing vendor units.

### 29. What must be verified after a change in Systemd Services and Boot?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 30. What should be documented for Systemd Services and Boot?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 31. Define the core purpose of Packages Software and Repositories.

**Answer:** Connect it to package, repository, metadata.

### 32. Name a read-only inspection command for Packages Software and Repositories.

**Answer:** One valid set is: apt-cache policy PKG; dpkg -L PKG. Explain the output.

### 33. Name one dangerous mistake in Packages Software and Repositories.

**Answer:** Mixing package families.

### 34. What must be verified after a change in Packages Software and Repositories?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 35. What should be documented for Packages Software and Repositories?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 36. Define the core purpose of Storage Filesystems and Mounts.

**Answer:** Connect it to block device, partition, filesystem.

### 37. Name a read-only inspection command for Storage Filesystems and Mounts.

**Answer:** One valid set is: lsblk -f; findmnt. Explain the output.

### 38. Name one dangerous mistake in Storage Filesystems and Mounts.

**Answer:** Formatting the wrong device.

### 39. What must be verified after a change in Storage Filesystems and Mounts?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 40. What should be documented for Storage Filesystems and Mounts?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 41. Define the core purpose of Networking DNS and SSH.

**Answer:** Connect it to interface, address, route.

### 42. Name a read-only inspection command for Networking DNS and SSH.

**Answer:** One valid set is: ip -brief address; ip route. Explain the output.

### 43. Name one dangerous mistake in Networking DNS and SSH.

**Answer:** Testing only ping.

### 44. What must be verified after a change in Networking DNS and SSH?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 45. What should be documented for Networking DNS and SSH?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 46. Define the core purpose of Logs Monitoring and Resources.

**Answer:** Connect it to journal, syslog, log rotation.

### 47. Name a read-only inspection command for Logs Monitoring and Resources.

**Answer:** One valid set is: journalctl --since "15 min ago"; free -h. Explain the output.

### 48. Name one dangerous mistake in Logs Monitoring and Resources.

**Answer:** Reading logs without timestamps.

### 49. What must be verified after a change in Logs Monitoring and Resources?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 50. What should be documented for Logs Monitoring and Resources?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 51. Define the core purpose of Bash Fundamentals and Scheduling.

**Answer:** Connect it to shebang, variable, quoting.

### 52. Name a read-only inspection command for Bash Fundamentals and Scheduling.

**Answer:** One valid set is: bash -n SCRIPT; shellcheck SCRIPT. Explain the output.

### 53. Name one dangerous mistake in Bash Fundamentals and Scheduling.

**Answer:** Unquoted expansion.

### 54. What must be verified after a change in Bash Fundamentals and Scheduling?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 55. What should be documented for Bash Fundamentals and Scheduling?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.

### 56. Define the core purpose of Security Backup and Troubleshooting.

**Answer:** Connect it to least privilege, patching, firewall.

### 57. Name a read-only inspection command for Security Backup and Troubleshooting.

**Answer:** One valid set is: sudo -l; getfacl PATH. Explain the output.

### 58. Name one dangerous mistake in Security Backup and Troubleshooting.

**Answer:** Calling an untested archive a backup.

### 59. What must be verified after a change in Security Backup and Troubleshooting?

**Answer:** Effective state, intended behavior, denied behavior, logs, persistence and rollback readiness.

### 60. What should be documented for Security Backup and Troubleshooting?

**Answer:** Intent, scope, commands or code, evidence, risk, result, rollback, limitations and owner.
