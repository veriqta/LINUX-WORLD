# Configuration Management Documentation

## Primary sources

| Source | Use |
| --- | --- |
| [Ansible documentation](https://docs.ansible.com/) | Automation and modules |
| [Puppet documentation](https://help.puppet.com/) | Puppet platform |
| [Chef documentation](https://docs.chef.io/) | Chef infrastructure automation |
| [Salt documentation](https://docs.saltproject.io/) | Salt project |

## Recommended method

Pin tool and collection versions, test idempotence, separate secrets, and prepare rollback.

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
