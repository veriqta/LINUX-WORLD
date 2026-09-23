# Release Support Matrix

> Last verified: 2026-09-23. This page deliberately links to authoritative lifecycle sources. Confirm status immediately before deployment, upgrade, certification, or support decisions.

| Distribution | Coverage approach | Authoritative source |
|---|---|---|
| Ubuntu | Current supported LTS and interim releases; examples emphasize supported LTS server administration | [Ubuntu release cycle](https://ubuntu.com/about/release-cycle) |
| Debian | Current stable plus still-supported prior stable or LTS releases | [Debian releases](https://www.debian.org/releases/) and [Debian LTS](https://wiki.debian.org/LTS/) |
| Rocky Linux | Supported major releases; minor-release behavior follows official release notes | [Rocky Linux version guide](https://wiki.rockylinux.org/rocky/version/) |
| RHEL | Active major releases and only documented upgrade paths; subscription terms and application streams require separate checks | [RHEL life cycle](https://access.redhat.com/support/policy/updates/errata) |
| Fedora | Current supported releases; rapid lifecycle requires checking before every upgrade plan | [Fedora lifecycle](https://docs.fedoraproject.org/en-US/releases/lifecycle/) |

## Local verification

```bash
cat /etc/os-release
uname -m
uname -r
```

Do not use repository age, kernel version, or a marketing name alone to infer support status.
