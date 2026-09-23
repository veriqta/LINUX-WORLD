# Linux World Toolkit

The Linux World Toolkit is a tested collection of Bash and Python utilities for Linux administration, health checking, diagnostics, monitoring, security review, validation, and operational reporting.

The toolkit favors safe, read-only behavior, explicit arguments, predictable output, documented exit codes, and reproducible tests. It supports learning in isolated labs and disciplined use in authorized environments.

## Start here

1. [How to use the toolkit](./How-to-Use-the-Toolkit.md)
2. [Toolkit safety](./Toolkit-Safety.md)
3. [Compatibility and dependencies](./Compatibility-and-Dependencies.md)
4. [Tool index](./Tool-Index.md)
5. [Testing and validation](./Testing-and-Validation-Standard.md)
6. [Installation and packaging](./Installation-and-Packaging.md)

## Collections

| Collection | Purpose |
|---|---|
| [Bash Scripts](./Bash-Scripts/README.md) | Portable system administration and evidence collection |
| [Python Scripts](./Python-Scripts/README.md) | Structured analysis, aggregation, and reporting |
| [Health Checks](./Health-Checks/README.md) | Clear healthy, warning, critical, and unknown results |
| [Diagnostic Tools](./Diagnostic-Tools/README.md) | Read-only evidence collection for investigations |
| [Monitoring Tools](./Monitoring-Tools/README.md) | Metrics, checks, watchers, exporters, and dashboards |
| [Security Audits](./Security-Audits/README.md) | Authorized, read-only security assessment |
| [Shared Libraries](./Shared-Libraries/README.md) | Common validation, logging, output, and redaction |
| [Test Fixtures](./Test-Fixtures/README.md) | Safe sample input for repeatable tests |
| [Validation](./Validation/README.md) | Repository-wide quality and safety checks |
| [Packaging](./Packaging/README.md) | Installation, release, checksum, and verification tools |
| [Templates](./Templates/README.md) | Starting points for new tools and services |

## Quick validation

```bash
cd 12-Toolkit
./Validation/validate-all.sh
```

## Safety boundary

This repository does not grant permission to inspect or change any system. Test tools in an isolated environment, obtain authorization, verify every target, and follow local security and change controls.
