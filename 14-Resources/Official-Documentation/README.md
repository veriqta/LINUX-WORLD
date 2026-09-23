# Official Documentation

Official documentation is the primary reference for supported behavior, current syntax, lifecycle policy, and security guidance.

## Begin with local evidence

```bash
command --help
man command
info command
help shell-builtin
apropos keyword
cat /etc/os-release
command --version
```

Then select the documentation matching the installed distribution and component version.

## Reading order

1. Concept or overview
2. Version and support statement
3. Prerequisites and warnings
4. Procedure or API reference
5. Verification
6. Troubleshooting and rollback
7. Release notes and known issues

Official does not always mean distribution-neutral. Upstream behavior may be patched, configured, or packaged differently downstream.
