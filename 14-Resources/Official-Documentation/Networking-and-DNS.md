# Networking and DNS Documentation

## Primary sources

| Source | Use |
| --- | --- |
| [iproute2 manual](https://man7.org/linux/man-pages/man8/ip.8.html) | Linux network configuration |
| [NetworkManager documentation](https://networkmanager.dev/docs/) | NetworkManager reference |
| [IETF RFC index](https://www.rfc-editor.org/) | Protocol standards |
| [BIND 9 documentation](https://bind9.readthedocs.io/) | DNS server documentation |

## Recommended method

Separate link, address, route, name resolution, transport, TLS, and application layers during investigation.

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
