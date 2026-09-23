# Diagram Standards

## Define the question

Begin with a question such as “How does a command become a process?” or “Where can a DNS request fail?” If the question is unclear, the diagram is not ready.

## Construction rules

- Use one dominant reading direction.
- Keep node labels short and explain detail in surrounding text.
- Limit visual vocabulary and provide a legend when symbols are not obvious.
- Show boundaries, ownership, direction, and state explicitly.
- Distinguish logical flow from physical topology.
- Label optional, failure, retry, and asynchronous paths.
- Use reserved example addresses and synthetic system names.
- Avoid false precision and unexplained vendor icons.

## Technical review

Verify every component, arrow, port, protocol, order, trust boundary, and failure statement against the documented version. A clean drawing with an incorrect arrow is still incorrect.

## Accessibility

Provide descriptive alt text and a prose or table equivalent. Use labels or patterns with color. Export to SVG when it preserves clarity and text.

## Source header

Each editable source should record title, question answered, asset ID, version, technical scope, source references, author, reviewers, and review date.

## Export review

Open the exported file independently, inspect small-screen readability, confirm no clipping or font substitution, and compare it against the source before commit.
