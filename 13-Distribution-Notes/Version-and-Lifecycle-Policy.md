# Version and Lifecycle Policy

Every version-sensitive page records distribution, scope, architecture, verification date, official source, and known differences. Stable concepts are separated from release-dependent defaults and commands.

## Required workflow

1. Identify the workload, support requirement, and exact current release.
2. Separate portable Linux behavior from distribution integration.
3. Confirm package and repository provenance.
4. Test the intended state in an isolated matching environment.
5. Define verification, rollback, recovery, and ownership.
6. Record the official source and verification date.

## Evidence

- `/etc/os-release` and architecture
- Enabled repositories and signing configuration
- Installed packages and file ownership
- Active system and network managers
- Security-module and firewall state
- Filesystem and boot layout
- Update or migration test results
- User-path and recovery verification

## Related sections

- [Distribution Notes home](./README.md)
- [Distribution comparisons](./Distribution-Comparisons/README.md)
- [Release support matrix](./Release-Support-Matrix.md)
