# Source Trust and Verification

No source should be trusted only because it appears professional or ranks highly in search results.

## Evidence hierarchy

1. Installed manual, package documentation, and the running system's own reported state
2. Official project, vendor, distribution, standards, and security documentation
3. Maintainer design notes, release notes, source code, and tracked issues
4. Reviewed books, courses, and technical educators
5. Community articles, forums, and videos
6. Social posts, generated summaries, and unverified snippets

Higher does not always mean easier to understand. It normally means stronger authority for supported behavior.

## Triangulation workflow

1. State the claim precisely.
2. Identify the relevant software and version.
3. Locate a primary source.
4. Inspect local behavior using a safe read-only command.
5. Compare at least one independent explanation when consequences are significant.
6. Test in an isolated environment.
7. Record evidence, uncertainty, and exceptions.

## Warning signs

- No version, date, author, or reproducible environment
- Destructive commands without target checks
- Disabling SELinux, AppArmor, TLS validation, or firewalls as a default fix
- Running downloaded scripts as root without inspection
- Advice that ignores rollback, backup, or access preservation
- Claims that one command works on every distribution
- Screenshots without commands, output, or verification
- Certification material claiming to contain live examination questions

## Conflicting sources

Prefer the source responsible for the exact component. Check version differences, downstream distribution patches, deprecated interfaces, and whether the sources answer different questions. When uncertainty remains, describe it instead of inventing certainty.
