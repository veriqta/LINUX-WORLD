# Ubuntu Distribution Notes

> **Verification metadata**
>
> - Distribution: Ubuntu
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [Ubuntu documentation](https://documentation.ubuntu.com/server/)

These notes cover the administrative behavior that distinguishes Ubuntu from other distributions. Ubuntu belongs to the Debian family and uses APT and dpkg.

## Study order

1. [Ubuntu Overview](./Ubuntu-Overview.md)
2. [Editions Releases and LTS](./Editions-Releases-and-LTS.md)
3. [Installation and Initial Configuration](./Installation-and-Initial-Configuration.md)
4. [Package Management with APT](./Package-Management-with-APT.md)
5. [Repositories PPAs and Package Sources](./Repositories-PPAs-and-Package-Sources.md)
6. [Snap Packages](./Snap-Packages.md)
7. [Services and systemd](./Services-and-systemd.md)
8. [Networking and Netplan](./Networking-and-Netplan.md)
9. [DNS and systemd resolved](./DNS-and-systemd-resolved.md)
10. [Users Sudo and Administrative Access](./Users-Sudo-and-Administrative-Access.md)
11. [AppArmor](./AppArmor.md)
12. [UFW and Firewall Management](./UFW-and-Firewall-Management.md)
13. [Storage LVM and Filesystems](./Storage-LVM-and-Filesystems.md)
14. [Logging and journald](./Logging-and-journald.md)
15. [Kernel and Hardware Enablement](./Kernel-and-Hardware-Enablement.md)
16. [Updates Security Patches and Livepatch](./Updates-Security-Patches-and-Livepatch.md)
17. [Release Upgrades](./Release-Upgrades.md)
18. [Cloud Images and cloud init](./Cloud-Images-and-cloud-init.md)
19. [Recovery and Rescue](./Recovery-and-Rescue.md)
20. [Ubuntu Server Hardening](./Ubuntu-Server-Hardening.md)
21. [Common Ubuntu Problems](./Common-Ubuntu-Problems.md)
22. [Ubuntu Administration Checklist](./Ubuntu-Administration-Checklist.md)
23. [Ubuntu Command Reference](./Ubuntu-Command-Reference.md)

## Baseline discovery

```bash
cat /etc/os-release
uname -r
apt-cache policy; grep -Rhs -- "^deb" /etc/apt/sources.list /etc/apt/sources.list.d 2>/dev/null
networkctl status 2>/dev/null || nmcli general status
sudo aa-status
sudo ufw status verbose
```

Run commands individually and interpret errors. Some tools may not be installed, enabled, or permitted in containers and minimal images.

## Completion standard

A learner should be able to install and verify packages, explain repository trust, operate systemd services, identify network and resolver ownership, inspect AppArmor, evaluate the firewall, manage updates safely, perform recovery, and explain how Ubuntu differs from the other distributions in this repository.
