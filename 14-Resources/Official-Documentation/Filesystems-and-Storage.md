# Filesystems and Storage Documentation

## Primary sources

| Source | Use |
| --- | --- |
| [Kernel filesystems documentation](https://docs.kernel.org/filesystems/) | VFS and filesystem documentation |
| [LVM documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/configuring_and_managing_logical_volumes/) | Enterprise LVM administration |
| [XFS documentation](https://docs.kernel.org/filesystems/xfs.html) | XFS internals and interfaces |
| [Btrfs documentation](https://btrfs.readthedocs.io/) | Btrfs administration |

## Recommended method

Identify every layer before changing storage: device, RAID, encryption, LVM, filesystem, mount, and application.

## Verification checklist

- Confirm the running version and distribution.
- Prefer a local manual when it matches the installed package.
- Record defaults, prerequisites, warnings, and privilege requirements.
- Validate configuration syntax before reload or restart.
- Capture before and after state.
- Test rollback in a safe environment.
- Review release notes and known issues for version changes.

## Citation record

Record page title, organization, canonical URL, product version, section, and access date.
