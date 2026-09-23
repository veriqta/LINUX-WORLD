# SELinux vs AppArmor

> Last verified: 2026-09-23. Verify current release documentation and the active system before applying any mapping.

This comparison focuses on mandatory access control models and denial investigation. It does not rank distributions or replace release-specific vendor documentation.

## Comparison

| Area | SELinux | AppArmor |
|---|---|---|
| Common family | RHEL, Rocky Linux, Fedora | Ubuntu and some Debian installations |
| Primary model | Labels, types, domains, and policy | Path-based profiles and abstractions |
| Status | `getenforce; sestatus` | `aa-status` |
| Denial evidence | Audit log and AVC records | Kernel or journal AppArmor denials |
| Safe response | Correct labels, booleans, ports, or narrow policy | Correct paths, abstractions, or narrow profile rules |
| Unsafe shortcut | Disabling enforcement | Disabling or broadly weakening profiles |

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
