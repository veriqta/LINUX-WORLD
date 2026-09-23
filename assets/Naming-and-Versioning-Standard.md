# Naming and Versioning Standard

## Filename pattern

Use lowercase kebab-case:

```text
<subject>-<purpose>-v<major>[.<minor>].<extension>
```

Examples:

```text
linux-boot-sequence-v1.svg
dns-resolution-path-v2.1.mmd
systemd-failed-service-example-v1.png
junior-projects-banner-v1.svg
```

Use a version suffix for reusable assets. Screenshots tied to a lesson may use a stable step number plus version, such as `ssh-lab-step-04-verify-v1.png`.

## Version changes

| Change | Version action |
| --- | --- |
| Correct spelling without meaning change | Patch or inventory revision only |
| Add detail without changing the main model | Minor version |
| Change topology, sequence, meaning, or compatibility | Major version |
| Re-export with no content change | Keep content version, update export metadata |

## Forbidden names

Do not use spaces, timestamps from screenshot tools, personal names, `image1`, `new`, `latest`, `final`, `final-final`, or unexplained abbreviations.

## Renaming safely

Search all repository references, add the new file, update links, validate them, update the inventory and attribution records, then remove or archive the old file. A rename is incomplete while current documentation still references the previous path.

## Stable identifiers

Inventory IDs do not change when a file moves or its display title changes. Create a new ID only when the asset represents a different concept.
