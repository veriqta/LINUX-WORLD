# Accessibility and Alt Text Guide

Visual information must remain understandable for readers using screen readers, text-only clients, zoom, high-contrast modes, or limited bandwidth.

## Alt text principles

Describe the information the asset contributes in its context. Do not begin with “image of.” Avoid repeating the nearby caption word for word.

### Simple image

```markdown
![Linux World logo](branding/logos/linux-world-logo-v1.svg)
```

### Informative diagram

```markdown
![Boot flow from UEFI to GRUB, kernel, initramfs, systemd, and login](diagrams/exported/linux-boot-sequence-v1.svg)
```

Follow a complex diagram with a structured text explanation or table that communicates the same sequence and relationships.

### Decorative image

Use empty alt text only when the image adds no information:

```markdown
![](path/to/decorative-divider.svg)
```

## Visual requirements

- Do not encode state only with red, amber, or green.
- Use labels, shapes, icons, or patterns alongside color.
- Maintain readable contrast for text and meaningful graphical elements.
- Avoid tiny embedded text and excessive horizontal diagrams.
- Provide controls or a static alternative for motion.
- Avoid flashing content.

## Screenshot accessibility

Repeat important commands and output as text. Captions should explain the observation, not merely name the screen. Crop irrelevant chrome while retaining enough context to understand the state.

## Review questions

Can a reader understand the lesson without loading the image? Does the alt text describe the relevant meaning? Can a color-blind reader distinguish states? Does zoom preserve clarity? Is a transcript available for every recording?
