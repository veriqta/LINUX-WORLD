# Rocky-Linux Distribution Notes

> **Verification metadata**
>
> - Distribution: Rocky-Linux
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [Rocky-Linux documentation](https://docs.rockylinux.org/)

These notes cover the administrative behavior that distinguishes Rocky-Linux from other distributions. Rocky-Linux belongs to the Red Hat family and uses DNF and RPM.

## Study order

1. [Rocky Linux Overview](./Rocky-Linux-Overview.md)
2. [Releases Lifecycle and Compatibility](./Releases-Lifecycle-and-Compatibility.md)
3. [Installation and Initial Configuration](./Installation-and-Initial-Configuration.md)
4. [Package Management with DNF and RPM](./Package-Management-with-DNF-and-RPM.md)
5. [Repositories and Modularity](./Repositories-and-Modularity.md)
6. [EPEL and Additional Repositories](./EPEL-and-Additional-Repositories.md)
7. [Services and systemd](./Services-and-systemd.md)
8. [Networking with NetworkManager](./Networking-with-NetworkManager.md)
9. [DNS and Resolver Configuration](./DNS-and-Resolver-Configuration.md)
10. [Users Sudo and Administrative Access](./Users-Sudo-and-Administrative-Access.md)
11. [SELinux](./SELinux.md)
12. [firewalld](./firewalld.md)
13. [Storage LVM and XFS](./Storage-LVM-and-XFS.md)
14. [Logging journald and rsyslog](./Logging-journald-and-rsyslog.md)
15. [Kernel and kdump](./Kernel-and-kdump.md)
16. [Updates and Security Patches](./Updates-and-Security-Patches.md)
17. [Major Version Migrations](./Major-Version-Migrations.md)
18. [Cloud Images and cloud init](./Cloud-Images-and-cloud-init.md)
19. [Recovery and Rescue](./Recovery-and-Rescue.md)
20. [Rocky Linux Server Hardening](./Rocky-Linux-Server-Hardening.md)
21. [Common Rocky Linux Problems](./Common-Rocky-Linux-Problems.md)
22. [Rocky Linux Administration Checklist](./Rocky-Linux-Administration-Checklist.md)
23. [Rocky Linux Command Reference](./Rocky-Linux-Command-Reference.md)

## Baseline discovery

```bash
cat /etc/os-release
uname -r
dnf repolist --all; grep -Rhs "^\[" /etc/yum.repos.d 2>/dev/null
nmcli general status; nmcli connection show
getenforce; sestatus
sudo firewall-cmd --state; sudo firewall-cmd --list-all
```

Run commands individually and interpret errors. Some tools may not be installed, enabled, or permitted in containers and minimal images.

## Completion standard

A learner should be able to install and verify packages, explain repository trust, operate systemd services, identify network and resolver ownership, inspect SELinux, evaluate the firewall, manage updates safely, perform recovery, and explain how Rocky-Linux differs from the other distributions in this repository.
