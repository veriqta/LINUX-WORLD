# Security Advisory Comparison

> Last verified: 2026-09-23. Verify current release documentation and the active system before applying any mapping.

This comparison focuses on administrative behavior, supported workflows, and operational consequences. It does not rank distributions or replace release-specific vendor documentation.

## Comparison

| Administrative area | Ubuntu | Debian | Rocky Linux | RHEL | Fedora |
|---|---|---|---|---|---|
| Family | Debian | Debian | Red Hat | Red Hat | Red Hat upstream |
| High-level packages | APT | APT | DNF | DNF | DNF |
| Package database | dpkg | dpkg | RPM | RPM | RPM |
| Repository paths | `/etc/apt/sources.list*` | `/etc/apt/sources.list*` | `/etc/yum.repos.d/*.repo` | Entitlement plus `/etc/yum.repos.d/*.repo` | `/etc/yum.repos.d/*.repo` |
| Common network configuration | Netplan | Installed stack varies | NetworkManager | NetworkManager | NetworkManager |
| Mandatory access control | AppArmor commonly | AppArmor availability varies | SELinux | SELinux | SELinux |
| Common firewall frontend | UFW | Installed frontend varies | firewalld | firewalld | firewalld |
| Common server filesystem | Verify, often ext4 | Verify, often ext4 | Verify, often XFS | Verify, often XFS | Edition and installation dependent |

## Verification workflow

```bash
cat /etc/os-release
uname -r
command -v apt dnf dpkg rpm nmcli netplan ufw firewall-cmd nft aa-status getenforce 2>/dev/null
systemctl --failed --no-pager
```

Tool presence does not prove that the tool owns the active configuration. Inspect the service manager, generated files, process arguments, routes, resolver, firewall rules, and policy state.

## Migration questions

- Which package names and versions change?
- Which repositories and signing authorities supply them?
- Which configuration paths and formats change?
- Which service users, groups, units, and capabilities change?
- Does AppArmor or SELinux alter access behavior?
- Which network and firewall manager owns runtime state?
- How will data, backups, monitoring, and rollback be validated?

## Cross-distribution lab

Build one Ubuntu or Debian virtual machine and one Rocky Linux, RHEL, or Fedora virtual machine. Install the same service, record packages, repositories, units, paths, security controls, ports, logs, and update behavior. Test one reversible failure on each host, recover it, and explain what transferred conceptually versus what required a distribution-specific action.

## Official sources

- [Ubuntu Server documentation](https://documentation.ubuntu.com/server/)
- [Debian documentation](https://www.debian.org/doc/)
- [Rocky Linux documentation](https://docs.rockylinux.org/)
- [RHEL documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/)
- [Fedora documentation](https://docs.fedoraproject.org/)
