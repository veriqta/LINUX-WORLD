# Cross Distribution Command Reference

> Last verified: 2026-09-23. Verify current release documentation and the active system before applying any mapping.

This comparison focuses on commands, package ownership, package names, and transaction verification. It does not rank distributions or replace release-specific vendor documentation.

## Comparison

| Task | Debian and Ubuntu | RHEL, Rocky Linux, and Fedora | Verification |
|---|---|---|---|
| Refresh metadata | `sudo apt update` | `sudo dnf makecache` | Review repository and error output |
| Install package | `sudo apt install PACKAGE` | `sudo dnf install PACKAGE` | `dpkg-query -W PACKAGE` or `rpm -q PACKAGE` |
| Remove package | `sudo apt remove PACKAGE` | `sudo dnf remove PACKAGE` | Query package and required services |
| Find package owner | `dpkg -S /PATH` | `rpm -qf /PATH` | Confirm exact path and package origin |
| List package files | `dpkg -L PACKAGE` | `rpm -ql PACKAGE` | Inspect configuration and unit files |
| Verify package files | `dpkg --verify PACKAGE` | `rpm -V PACKAGE` | Interpret each reported attribute |
| List repositories | `apt-cache policy` | `dnf repolist --all` | Confirm enabled sources and release match |
| Update packages | `sudo apt upgrade` | `sudo dnf upgrade` | Reboot requirement and failed units |

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
