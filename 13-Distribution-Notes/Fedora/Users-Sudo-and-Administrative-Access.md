# Users Sudo and Administrative Access

> **Verification metadata**
>
> - Distribution: Fedora
> - Scope: Current and recently supported releases
> - Architecture: Commands are generally architecture-independent unless stated
> - Last verified: 2026-09-23
> - Required check: Confirm the exact installed release before applying instructions
> - Official documentation: [Fedora documentation](https://docs.fedoraproject.org/)

This guide explains users sudo and administrative access as it applies specifically to Fedora. It records distribution differences without repeating the general Linux course.

## Learning objectives

- Identify the Fedora-specific tools, paths, defaults, and support boundaries.
- Execute the documented workflow in an isolated lab.
- Explain every command before using elevated privileges.
- Verify the system, service, security, and user-facing result.
- Recognize release-dependent behavior and escalation conditions.

## Before beginning

```bash
cat /etc/os-release
uname -m
uname -r
```

Confirm that the system is Fedora, identify its exact release and architecture, take an appropriate backup or snapshot, preserve remote recovery access, and consult the release-specific official documentation.

## Administrative access

Separate personal accounts, service accounts, privilege delegation, and emergency access. Confirm whether the initial installer or cloud image creates direct root access, sudo access, or another model.

```bash
getent passwd USER
id USER
sudo -l -U USER
getent group sudo 2>/dev/null || true
getent group wheel 2>/dev/null || true
```

Use narrowly scoped sudo rules, full paths, syntax validation, and independent recovery access. Do not place passwords, tokens, or private keys in public examples.

## Command interpretation standard

For every command, record:

- Why it is required
- Whether it reads or changes state
- Required privileges
- Files, repositories, services, or network paths involved
- Expected output and exit status
- Verification and rollback

Commands containing placeholders such as `PACKAGE`, `SERVICE`, `USER`, or `/PATH` must not be copied unchanged.

## Layered verification

1. **Identity:** The intended host, release, and architecture are confirmed.
2. **Configuration:** The authoritative file or manager contains the expected state.
3. **Runtime:** The kernel, service, mount, route, or policy uses that state.
4. **Security:** Privileges and exposure did not become broader.
5. **Dependency:** Required upstream and downstream systems remain healthy.
6. **User path:** A representative transaction succeeds.
7. **Persistence:** The result survives the relevant reload, restart, or reboot test.

## Common mistakes

- Following instructions written for another distribution family.
- Mixing repositories from incompatible releases.
- Treating a package installation as service readiness.
- Disabling SELinux or the firewall to hide a configuration error.
- Editing generated files instead of their authoritative source.
- Upgrading without reading release notes and third-party compatibility statements.
- Assuming cloud images match installer-created systems.
- Sharing logs or configuration without redaction.

## Practical exercise

Create a disposable Fedora virtual machine. Capture release metadata, repository state, installed package ownership, active network manager, resolver ownership, firewall state, mandatory-access-control state, filesystem layout, failed units, and recent warnings. Explain which observations are distribution defaults and which are local configuration.

## Troubleshooting questions

1. Which installed component owns the behavior?
2. Is the observed state a default, an administrator change, or generated output?
3. Does the instruction apply to this exact release?
4. Which repository supplied the package?
5. Which control rejected or transformed the configuration?
6. What evidence proves recovery?

## Completion checklist

- [ ] Exact release and architecture recorded.
- [ ] Version-sensitive claims verified against official documentation.
- [ ] Commands tested in an isolated environment.
- [ ] Expected and actual output compared.
- [ ] Security and network exposure checked.
- [ ] Rollback or recovery path tested.
- [ ] Findings documented without secrets or personal data.

## Official references

- [Fedora documentation](https://docs.fedoraproject.org/)
- [Fedora release and lifecycle information](https://docs.fedoraproject.org/en-US/releases/lifecycle/)
- [Linux World distribution comparison index](../Distribution-Comparisons/README.md)
- [Linux World distribution notes home](../README.md)
