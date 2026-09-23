# Fedora Distribution Notes

> **Verification metadata**
>
> - Distribution: Fedora
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [Fedora documentation](https://docs.fedoraproject.org/)

These notes cover the administrative behavior that distinguishes Fedora from other distributions. Fedora belongs to the Red Hat family and upstream of technologies later integrated into RHEL and uses DNF and RPM.

## Study order

1. [Fedora Overview](./Fedora-Overview.md)
2. [Editions Releases and Lifecycle](./Editions-Releases-and-Lifecycle.md)
3. [Installation and Initial Configuration](./Installation-and-Initial-Configuration.md)
4. [Package Management with DNF and RPM](./Package-Management-with-DNF-and-RPM.md)
5. [Repositories and COPR](./Repositories-and-COPR.md)
6. [Services and systemd](./Services-and-systemd.md)
7. [Networking with NetworkManager](./Networking-with-NetworkManager.md)
8. [DNS and systemd resolved](./DNS-and-systemd-resolved.md)
9. [Users Sudo and Administrative Access](./Users-Sudo-and-Administrative-Access.md)
10. [SELinux](./SELinux.md)
11. [firewalld](./firewalld.md)
12. [Storage LVM Btrfs and Filesystems](./Storage-LVM-Btrfs-and-Filesystems.md)
13. [Logging and journald](./Logging-and-journald.md)
14. [Kernel Management](./Kernel-Management.md)
15. [Updates and Security Patches](./Updates-and-Security-Patches.md)
16. [System Upgrades](./System-Upgrades.md)
17. [Silverblue Kinoite and Atomic Desktops](./Silverblue-Kinoite-and-Atomic-Desktops.md)
18. [Toolbox and Development Environments](./Toolbox-and-Development-Environments.md)
19. [Cloud Images and cloud init](./Cloud-Images-and-cloud-init.md)
20. [Recovery and Rescue](./Recovery-and-Rescue.md)
21. [Fedora System Hardening](./Fedora-System-Hardening.md)
22. [Common Fedora Problems](./Common-Fedora-Problems.md)
23. [Fedora Administration Checklist](./Fedora-Administration-Checklist.md)
24. [Fedora Command Reference](./Fedora-Command-Reference.md)

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

A learner should be able to install and verify packages, explain repository trust, operate systemd services, identify network and resolver ownership, inspect SELinux, evaluate the firewall, manage updates safely, perform recovery, and explain how Fedora differs from the other distributions in this repository.
