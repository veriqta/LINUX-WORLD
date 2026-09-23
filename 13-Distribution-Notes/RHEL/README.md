# RHEL Distribution Notes

> **Verification metadata**
>
> - Distribution: RHEL
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [RHEL documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/)

These notes cover the administrative behavior that distinguishes RHEL from other distributions. RHEL belongs to the Red Hat family and uses DNF and RPM.

## Study order

1. [RHEL Overview](./RHEL-Overview.md)
2. [Subscriptions Releases and Lifecycle](./Subscriptions-Releases-and-Lifecycle.md)
3. [Installation and Initial Configuration](./Installation-and-Initial-Configuration.md)
4. [Subscription Manager](./Subscription-Manager.md)
5. [Package Management with DNF and RPM](./Package-Management-with-DNF-and-RPM.md)
6. [Repositories AppStream and BaseOS](./Repositories-AppStream-and-BaseOS.md)
7. [Services and systemd](./Services-and-systemd.md)
8. [Networking with NetworkManager](./Networking-with-NetworkManager.md)
9. [DNS and Resolver Configuration](./DNS-and-Resolver-Configuration.md)
10. [Users Sudo and Administrative Access](./Users-Sudo-and-Administrative-Access.md)
11. [SELinux](./SELinux.md)
12. [firewalld](./firewalld.md)
13. [Storage LVM and XFS](./Storage-LVM-and-XFS.md)
14. [Logging journald and rsyslog](./Logging-journald-and-rsyslog.md)
15. [Kernel kdump and Live Patching](./Kernel-kdump-and-Live-Patching.md)
16. [Updates and Security Advisories](./Updates-and-Security-Advisories.md)
17. [In Place Upgrades with Leapp](./In-Place-Upgrades-with-Leapp.md)
18. [Insights and System Management](./Insights-and-System-Management.md)
19. [Cloud Images and cloud init](./Cloud-Images-and-cloud-init.md)
20. [Recovery and Rescue](./Recovery-and-Rescue.md)
21. [RHEL Server Hardening](./RHEL-Server-Hardening.md)
22. [Common RHEL Problems](./Common-RHEL-Problems.md)
23. [RHEL Administration Checklist](./RHEL-Administration-Checklist.md)
24. [RHEL Command Reference](./RHEL-Command-Reference.md)

## Baseline discovery

```bash
cat /etc/os-release
uname -r
subscription-manager status; dnf repolist --all
nmcli general status; nmcli connection show
getenforce; sestatus
sudo firewall-cmd --state; sudo firewall-cmd --list-all
```

Run commands individually and interpret errors. Some tools may not be installed, enabled, or permitted in containers and minimal images.

## Completion standard

A learner should be able to install and verify packages, explain repository trust, operate systemd services, identify network and resolver ownership, inspect SELinux, evaluate the firewall, manage updates safely, perform recovery, and explain how RHEL differs from the other distributions in this repository.
