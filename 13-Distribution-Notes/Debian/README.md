# Debian Distribution Notes

> **Verification metadata**
>
> - Distribution: Debian
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [Debian documentation](https://www.debian.org/doc/)

These notes cover the administrative behavior that distinguishes Debian from other distributions. Debian belongs to the Debian family and uses APT and dpkg.

## Study order

1. [Debian Overview](./Debian-Overview.md)
2. [Stable Testing and Unstable](./Stable-Testing-and-Unstable.md)
3. [Installation and Initial Configuration](./Installation-and-Initial-Configuration.md)
4. [Package Management with APT and dpkg](./Package-Management-with-APT-and-dpkg.md)
5. [Repository Components and Sources](./Repository-Components-and-Sources.md)
6. [Pinning Priorities and Backports](./Pinning-Priorities-and-Backports.md)
7. [Services and systemd](./Services-and-systemd.md)
8. [Networking Configuration](./Networking-Configuration.md)
9. [DNS and Resolver Configuration](./DNS-and-Resolver-Configuration.md)
10. [Users Sudo and Administrative Access](./Users-Sudo-and-Administrative-Access.md)
11. [AppArmor and Security Controls](./AppArmor-and-Security-Controls.md)
12. [Firewall Management](./Firewall-Management.md)
13. [Storage LVM and Filesystems](./Storage-LVM-and-Filesystems.md)
14. [Logging and journald](./Logging-and-journald.md)
15. [Kernel Management](./Kernel-Management.md)
16. [Security Updates](./Security-Updates.md)
17. [Distribution Upgrades](./Distribution-Upgrades.md)
18. [Cloud Images and cloud init](./Cloud-Images-and-cloud-init.md)
19. [Recovery and Rescue](./Recovery-and-Rescue.md)
20. [Debian Server Hardening](./Debian-Server-Hardening.md)
21. [Common Debian Problems](./Common-Debian-Problems.md)
22. [Debian Administration Checklist](./Debian-Administration-Checklist.md)
23. [Debian Command Reference](./Debian-Command-Reference.md)

## Baseline discovery

```bash
cat /etc/os-release
uname -r
apt-cache policy; grep -Rhs -- "^deb" /etc/apt/sources.list /etc/apt/sources.list.d 2>/dev/null
ip address; ip route; systemctl is-active networking NetworkManager systemd-networkd 2>/dev/null
sudo aa-status 2>/dev/null || true
sudo nft list ruleset
```

Run commands individually and interpret errors. Some tools may not be installed, enabled, or permitted in containers and minimal images.

## Completion standard

A learner should be able to install and verify packages, explain repository trust, operate systemd services, identify network and resolver ownership, inspect AppArmor may be available or enabled depending on installation and release, evaluate the firewall, manage updates safely, perform recovery, and explain how Debian differs from the other distributions in this repository.
