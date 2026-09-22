# Linux Commands and Cheat Sheets

A public, practical reference for Linux commands used in administration, troubleshooting, security, networking, storage, performance analysis, automation, and recovery.

This collection is designed for readers who need more than a command name. It explains purpose, safe usage, verification, operational risk, and common failure patterns.

## Start here

- Use the [Command Index](Command-Index.md) when you know the task or command name.
- Open a topic folder for detailed references, workflows, and troubleshooting.
- Use [Cheat Sheets](Cheat-Sheets/) for fast recall after learning the underlying concepts.
- New Linux users should first complete the relevant lesson in [Beginner to Advanced](../01-Beginner-to-Advanced/).

## Sections

| Section | Use it for |
| --- | --- |
| [Files and Directories](Files-and-Directories/) | Navigation, copying, moving, searching, links, metadata, and disk usage |
| [Text Processing](Text-Processing/) | Viewing, filtering, extracting, transforming, sorting, and comparing text |
| [Users and Permissions](Users-and-Permissions/) | Accounts, groups, ownership, modes, ACLs, sudo, and access diagnosis |
| [Processes](Processes/) | Process inspection, signals, jobs, priorities, open files, and tracing |
| [systemd and Services](Systemd-and-Services/) | Service control, unit files, dependencies, boot analysis, and journal queries |
| [Package Management](Package-Management/) | Debian and RPM package discovery, installation, updates, verification, and rollback |
| [Storage](Storage/) | Devices, partitions, filesystems, mounts, LVM, swap, health, and capacity |
| [Networking](Networking/) | Interfaces, routes, DNS, sockets, HTTP, TLS, packet capture, SSH, and transfer |
| [Security](Security/) | SSH hardening, firewalls, auditing, integrity, certificates, and access review |
| [Logs](Logs/) | Journal and file logs, filtering, correlation, rotation, preservation, and analysis |
| [Performance](Performance/) | CPU, memory, I/O, network, pressure, process, and system measurements |
| [Emergency Recovery](Emergency-Recovery/) | Boot failure, lost access, full disks, broken mounts, and filesystem recovery |
| [Cheat Sheets](Cheat-Sheets/) | Short, task-oriented command summaries |

## Command risk labels

| Level | Meaning | Examples |
| --- | --- | --- |
| Read only | Expected to inspect state without changing it | `ls`, `ps`, `ss`, `findmnt` |
| Low change | Limited and normally reversible | creating a directory, starting a lab process |
| Privileged | Changes system-wide state or accesses restricted data | `systemctl`, package installation, firewall inspection |
| High risk | Can remove access, erase data, or prevent boot | `rm -rf`, `mkfs`, partition editing, firewall replacement, bootloader repair |

A label never replaces judgment. Read-only commands can still expose secrets or create load. Low-risk commands can be dangerous when run against the wrong host or path.

## Before running a command

```bash
hostname
id
pwd
date --iso-8601=seconds
```

Ask:

1. Am I on the correct host, container, namespace, and user account?
2. Is the target path, device, service, package, process, or interface exact?
3. Does the command modify data or access?
4. Is there a validated backup or rollback?
5. Can I inspect, validate, or dry-run first?
6. How will I verify the result?

## Placeholder convention

Examples use uppercase placeholders such as `USER`, `HOST`, `PATH`, `DEVICE`, `INTERFACE`, and `UNIT`. Replace them with real values. Do not type angle brackets unless a command specifically requires them.

## Distribution support

Examples primarily target modern GNU/Linux systems. Debian, Ubuntu, Fedora, Rocky Linux, and RHEL may differ in package names, service names, paths, security modules, and default tools. Minimal containers often omit manual pages and common utilities.

## Responsible use

Use security, packet capture, identity, and recovery commands only on systems you own or are authorized to administer. Sanitize output before publishing it. Never commit credentials, private keys, access tokens, customer data, internal hostnames, or unredacted incident evidence.

