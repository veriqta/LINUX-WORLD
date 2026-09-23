# Tool Index

Use this index to select a tool by operational purpose. Read the tool README and run its help command before execution.

| Category | Tool | Executable | Purpose |
|---|---|---|---|
| Bash | System Inventory | `system-inventory.sh` | Collects operating system, kernel, CPU, memory, storage, network, and service facts. |
| Bash | User and Group Report | `user-group-report.sh` | Reports local accounts, groups, login shells, and privileged group membership. |
| Bash | Service Inventory | `service-inventory.sh` | Lists installed, enabled, running, and failed systemd services. |
| Bash | Package Inventory | `package-inventory.sh` | Produces a package inventory on Debian and RPM families. |
| Bash | Filesystem Usage Report | `filesystem-usage-report.sh` | Reports mounted filesystem capacity and inode consumption. |
| Bash | Large File Finder | `large-file-finder.sh` | Finds large files beneath an explicitly selected path without modifying them. |
| Bash | Log Collector | `log-collector.sh` | Collects bounded, redacted journal evidence into a restricted archive. |
| Bash | Certificate Expiry Check | `certificate-expiry-check.sh` | Checks a local PEM certificate expiry date. |
| Bash | Backup Verification | `backup-verification.sh` | Checks that a backup artifact exists, is recent, readable, and hashable. |
| Bash | Configuration Comparison | `configuration-comparison.sh` | Compares two configuration trees or files without changing either. |
| Bash | Scheduled Maintenance | `scheduled-maintenance.sh` | Runs an explicitly supplied read-only maintenance check with logging and timeout. |
| Python | Structured System Inventory | `structured_system_inventory.py` | Collects a structured local system inventory. |
| Python | Log Analyzer | `log_analyzer.py` | Counts log severities and extracts a bounded set of notable events. |
| Python | Capacity Reporter | `capacity_reporter.py` | Builds a JSON capacity snapshot for CPU, memory, and filesystems. |
| Python | Configuration Drift Detector | `configuration_drift_detector.py` | Compares expected and observed configuration trees using SHA-256. |
| Python | Incident Timeline Builder | `incident_timeline_builder.py` | Normalizes timestamped CSV events into an ordered incident timeline. |
| Python | Certificate Inventory | `certificate_inventory.py` | Inspects PEM certificate files and reports expiry metadata. |
| Python | Fleet Result Aggregator | `fleet_result_aggregator.py` | Aggregates JSON results produced by multiple hosts. |
| Python | Operational Report Generator | `operational_report_generator.py` | Turns structured operational facts into a Markdown report. |
| Health | Host Health | `check-host-health.sh` | Evaluates load, memory, and root filesystem thresholds. |
| Health | Systemd Service Health | `check-systemd-service.sh` | Checks whether a named systemd unit is active. |
| Health | CPU Health | `check-cpu-health.sh` | Evaluates one-minute load relative to available CPUs. |
| Health | Memory Health | `check-memory-health.sh` | Evaluates available memory percentage. |
| Health | Filesystem Health | `check-filesystem-health.sh` | Evaluates block usage for a selected mount point. |
| Health | Inode Health | `check-inode-health.sh` | Evaluates inode usage for a selected mount point. |
| Health | Network Health | `check-network-health.sh` | Checks route selection and bounded TCP reachability. |
| Health | DNS Health | `check-dns-health.sh` | Checks resolver success for a supplied name. |
| Health | HTTP Endpoint Health | `check-http-endpoint.py` | Checks status, latency, and optional response text for an HTTP endpoint. |
| Health | TLS Certificate Health | `check-tls-certificate.py` | Checks remote TLS certificate expiry using the Python standard library. |
| Health | Time Synchronization Health | `check-time-sync.sh` | Reports systemd time synchronization state. |
| Health | Backup Freshness | `check-backup-freshness.sh` | Checks the age of a supplied backup artifact. |
| Diagnostic | System Snapshot | `collect-system-snapshot.sh` | Collects a read-only system evidence bundle. |
| Diagnostic | Process Investigator | `investigate-process.sh` | Collects state, limits, descriptors, and command details for one PID. |
| Diagnostic | CPU Investigator | `investigate-cpu.sh` | Collects load, pressure, interrupts, and CPU consumers. |
| Diagnostic | Memory Investigator | `investigate-memory.sh` | Collects memory, swap, pressure, and process evidence. |
| Diagnostic | Storage Investigator | `investigate-storage.sh` | Collects block, mount, capacity, inode, and kernel storage evidence. |
| Diagnostic | Network Investigator | `investigate-network.sh` | Collects interface, route, socket, and protocol evidence. |
| Diagnostic | DNS Investigator | `investigate-dns.sh` | Collects resolver configuration and resolution evidence for a name. |
| Diagnostic | Systemd Investigator | `investigate-systemd.sh` | Collects unit status, properties, dependencies, and recent logs. |
| Diagnostic | Boot Investigator | `investigate-boot.sh` | Collects boot timing, failed units, and current-boot warnings. |
| Diagnostic | Log Bundle Collector | `collect-log-bundle.sh` | Creates a bounded, restricted journal archive for an approved time range. |
| Diagnostic | Comparison Tool | `compare-host-state.py` | Compares two JSON host snapshots and reports differences. |
| Security | Account Audit | `audit-accounts.sh` | Reviews accounts, shells, UID 0 identities, and empty password fields. |
| Security | Sudo Audit | `audit-sudo.sh` | Reviews sudo configuration syntax and included policy files. |
| Security | SSH Audit | `audit-ssh.sh` | Reviews effective SSH daemon settings without changing them. |
| Security | Permission Audit | `audit-permissions.sh` | Finds risky writable paths and privileged files under an approved root. |
| Security | Service Exposure Audit | `audit-service-exposure.sh` | Reports listening sockets, processes, addresses, and protocols. |
| Security | Firewall Audit | `audit-firewall.sh` | Reports detected host firewall state and rules. |
| Security | Kernel Hardening Audit | `audit-kernel-hardening.sh` | Checks a documented set of kernel hardening parameters. |
| Security | Package Integrity Audit | `audit-package-integrity.sh` | Runs distribution package verification in read-only mode. |
| Security | Certificate Audit | `audit-certificates.py` | Inventories PEM certificates beneath an approved path. |
| Security | Secrets Exposure Audit | `audit-secret-exposure.py` | Searches text files for high-confidence secret patterns with redacted findings. |
| Security | Security Baseline Report | `generate-security-baseline.py` | Combines safe host security observations into a JSON report. |

Monitoring collectors, exporters, synthetic checks, watchers, validation utilities, and packaging tools are indexed in their section READMEs.
