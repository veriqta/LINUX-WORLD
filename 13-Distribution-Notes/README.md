# Distribution Notes

Distribution Notes is a system-administration reference for the differences that matter across Ubuntu, Debian, Rocky Linux, Red Hat Enterprise Linux, and Fedora. It covers release models, packages, repositories, networking, security controls, storage, services, updates, cloud images, recovery, and migration.

## Start here

1. [How to Use Distribution Notes](./How-to-Use-Distribution-Notes.md)
2. [Distribution Selection Guide](./Distribution-Selection-Guide.md)
3. [Distribution Families](./Distribution-Families.md)
4. [Version and Lifecycle Policy](./Version-and-Lifecycle-Policy.md)
5. [Release Support Matrix](./Release-Support-Matrix.md)
6. [Migration Safety](./Migration-Safety.md)

## Distribution indexes

| Distribution | Family and role | Notes |
|---|---|---|
| [Ubuntu](./Ubuntu/README.md) | Debian family, widespread server and cloud use | APT, Netplan, AppArmor, UFW, Snap, release upgrades |
| [Debian](./Debian/README.md) | Debian family and upstream foundation | APT, repository suites, pinning, stable upgrades |
| [Rocky Linux](./Rocky-Linux/README.md) | Community enterprise Linux in the Red Hat ecosystem | DNF, SELinux, firewalld, XFS, EPEL |
| [RHEL](./RHEL/README.md) | Commercial enterprise distribution | Subscriptions, BaseOS, AppStream, Leapp, Insights |
| [Fedora](./Fedora/README.md) | Fast-moving Red Hat-family upstream | DNF, SELinux, Btrfs, atomic desktops, system upgrades |
| [Comparisons](./Distribution-Comparisons/README.md) | Cross-family operational mappings | Commands, paths, packages, services, security, migration |

## Scope boundary

These notes explain distribution differences. General Linux concepts belong in the main learning, command, troubleshooting, security, internals, and production-operations sections.

## Safety

Confirm `/etc/os-release`, release support, architecture, repository state, backups, console access, and rollback before following version-sensitive instructions. Never mix repositories or packages across incompatible releases or families.
