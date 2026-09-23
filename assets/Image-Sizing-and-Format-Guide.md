# Image Sizing and Format Guide

Choose formats based on the information, not personal preference.

## Recommended formats

| Content | Source | Published format | Notes |
| --- | --- | --- | --- |
| Logo or icon | SVG | SVG, optional PNG exports | Preserve vectors and transparency |
| Technical diagram | Mermaid, SVG, Draw.io, Excalidraw, or PlantUML | SVG, PNG only when required | Keep text searchable when possible |
| Terminal screenshot | Original capture plus metadata | PNG or lossless WebP | Avoid JPEG text artifacts |
| Photograph | Original | WebP or JPEG | Remove unnecessary metadata |
| Terminal recording | `.cast` or original recording | WebM, optional GIF fallback | Include transcript |
| Social preview | SVG design source | PNG | Verify platform cropping |

## Standard dimensions

| Use | Recommended canvas |
| --- | ---: |
| GitHub social preview | 1280 x 640 |
| Main repository banner | 1600 x 500 |
| Section banner | 1400 x 400 |
| Documentation thumbnail | 800 x 450 |
| Terminal screenshot | At least 1400 px wide |
| Raster icon exports | 64, 128, and 256 px square |

Technical diagrams should use a responsive SVG `viewBox` rather than a fixed raster size where practical.

## Export checks

- Text is readable at the Markdown display width.
- Lines and labels survive dark and light page backgrounds.
- Transparency is intentional.
- The asset is not upscaled from a small raster source.
- Compression does not blur terminal text or small labels.
- Embedded profiles and metadata do not expose sensitive information.
- File size is reasonable for users on limited connections.

## Git guidance

Do not commit every editor autosave. Commit editable source, required exports, metadata, and attribution. Avoid binary duplication across subject folders; use one canonical asset and reference it.
