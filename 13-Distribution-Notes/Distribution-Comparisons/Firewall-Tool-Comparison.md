# Firewall Tool Comparison

> Last verified: 2026-09-23. Verify current release documentation and the active system before applying any mapping.

This comparison focuses on firewall frontends, persistence, IPv6, and safe remote changes. It does not rank distributions or replace release-specific vendor documentation.

## Comparison

| Area | UFW | firewalld | nftables |
|---|---|---|---|
| Role | Simplified frontend common on Ubuntu | Zone and service frontend common on Red Hat family | Kernel packet-filter administration interface |
| Status | `ufw status verbose` | `firewall-cmd --state` | `nft list ruleset` |
| Persistence | Managed by UFW | Runtime and permanent configurations differ | Distribution integration determines persistence |
| Key risk | Locking out management | Updating only runtime or only permanent state | Replacing the active ruleset unintentionally |

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
