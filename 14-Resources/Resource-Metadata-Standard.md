# Resource Metadata Standard

Consistent metadata makes the library searchable, auditable, and maintainable.

## Required fields

| Field | Requirement |
| --- | --- |
| `id` | Stable lowercase identifier using letters, numbers, and hyphens |
| `name` | Published resource name |
| `type` | documentation, website, book, video-channel, playlist, standard, or tool |
| `publisher` | Responsible person or organization |
| `url` | Canonical HTTPS URL when available |
| `authority` | primary, maintainer, reviewed-educator, supplemental, or archived |
| `topics` | Controlled topic tags |
| `levels` | beginner, junior, mid-level, senior, or mixed |
| `access` | free, freemium, paid, subscription, or institutional |
| `languages` | Named human languages |
| `version_scope` | Covered releases or distribution-neutral |
| `status` | active, maintenance-only, archived, unavailable, or review-required |
| `last_reviewed` | UTC date in `YYYY-MM-DD` format |
| `next_review_due` | UTC review deadline |
| `strengths` | Concrete reasons for inclusion |
| `limitations` | Known gaps, assumptions, cost, or version risks |
| `verification` | Primary source used during review |

## Optional fields

ISBN, edition, publication year, captions, transcript, duration, prerequisites, geographic restrictions, account requirement, sponsorship, license, errata URL, replacement ID, and archive reason.

## Controlled vocabulary

Use repository topic names such as `administration`, `shell`, `storage`, `networking`, `security`, `kernel`, `containers`, `cloud`, `observability`, `sre`, and `certification`. Do not create spelling variants for existing tags.

## Example

```yaml
- id: linux-kernel-docs
  name: Linux Kernel Documentation
  type: documentation
  publisher: Linux kernel community
  url: https://docs.kernel.org/
  authority: primary
  topics: [kernel, internals, drivers]
  levels: [mid-level, senior]
  access: free
  languages: [English]
  version_scope: versioned upstream documentation
  status: active
  last_reviewed: 2026-09-23
  next_review_due: 2027-09-23
  strengths: [upstream source, versioned documentation]
  limitations: [assumes operating-system knowledge]
  verification: https://www.kernel.org/
```

## Change rules

Preserve IDs when titles or URLs change. Create a new ID only for a genuinely different resource. Record replacements and archival reasons. Dates describe review activity, not assumed publication dates.
