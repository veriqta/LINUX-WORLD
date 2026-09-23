# Resource Review and Freshness Policy

Every resource has an owner, review date, next review date, and status.

## Review intervals

| Resource | Normal interval | Triggered review |
| --- | ---: | --- |
| Security advisory or hardening guide | 3 months | Major vulnerability or policy change |
| Certification objectives | 3 months | Exam version change |
| Distribution procedures | 6 months | New major release or end of support |
| Video channel or playlist | 6 months | Channel rename, deletion, or major correction |
| Website or interactive lab | 6 months | Ownership, paywall, or content change |
| Official documentation hub | 12 months | URL or project governance change |
| Book | 12 months | New edition or major errata |
| Stable standard or historical work | 24 months | Superseding specification |

## Review outcomes

- **Retain:** accurate, accessible, and appropriately classified.
- **Update:** metadata, link, edition, scope, or warning changed.
- **Restrict:** useful only for a narrower audience or version.
- **Archive:** no longer suitable for current procedures but still valuable.
- **Remove:** unsafe, unlawful, deceptive, inaccessible without value, or replaced completely.

## Review evidence

Reviewers record the date, reviewer, URLs checked, version tested, key findings, decision, and next review. A successful HTTP response alone is not a content review.

## Stale records

When `next_review_due` has passed, label the entry `review-required`. Do not silently present stale certification, security, or production guidance as current.
