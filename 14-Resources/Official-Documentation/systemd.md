# systemd Documentation

## Primary sources

| Source | Use |
| --- | --- |
| [systemd project](https://systemd.io/) | Upstream documentation and concepts |
| [systemd manual index](https://www.freedesktop.org/software/systemd/man/latest/) | Versioned manual pages |
| [systemd source](https://github.com/systemd/systemd) | Source, releases, and issues |

## Recommended method

Check the installed systemd version before using newer directives. Prefer `systemctl cat`, `systemd-analyze verify`, and local manual pages.

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
