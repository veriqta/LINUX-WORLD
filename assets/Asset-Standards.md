# Asset Standards

These requirements apply to every file under `assets/`.

## Purpose test

An asset must do at least one job: identify Linux World, explain a technical relationship, demonstrate a user action, preserve test evidence, guide navigation, or communicate state. The related document must remain understandable when the asset cannot load.

## Required qualities

- **Accurate:** Matches the named Linux distribution, component, and version.
- **Focused:** Answers one clear question without crowding unrelated detail.
- **Readable:** Text remains legible at the display size used in Markdown.
- **Accessible:** Has useful alt text, sufficient contrast, logical order, and a text alternative for complex content.
- **Safe:** Contains no secrets or instructions that conceal operational risk.
- **Maintainable:** Includes source, version, owner, and usage references.
- **Lawful:** Ownership, license, trademark, and attribution are documented.
- **Efficient:** Uses an appropriate format and reasonable file size.

## Asset lifecycle

```text
proposal -> source -> technical review -> accessibility review
         -> safety and license review -> export -> inventory -> publication
         -> scheduled review -> update, archive, or removal
```

## Review gates

| Gate | Questions |
| --- | --- |
| Technical | Are labels, commands, topology, sequence, and versions correct? |
| Educational | Does the asset improve understanding? Is prerequisite context present? |
| Accessibility | Can the same meaning be obtained without vision, color, or animation? |
| Safety | Has every visible and hidden sensitive value been removed? |
| Legal | Is the creator, owner, license, attribution, and permission recorded? |
| Maintenance | Are source file, export, version, usage, and review date recorded? |

## Prohibited practices

- Editing only an exported diagram while leaving its source stale
- Using color as the only indicator of success, danger, or level
- Capturing live production data for a tutorial when synthetic data is possible
- Stretching logos or changing third-party marks
- Removing watermarks or ownership notices from external material
- Embedding large text paragraphs in images instead of Markdown
- Claiming a screenshot proves security, performance, or reliability without supporting evidence

## Review frequency

Review branding when identity rules change, version-sensitive screenshots every six months, technical diagrams with their source documentation, and third-party licenses whenever an asset or usage changes.
