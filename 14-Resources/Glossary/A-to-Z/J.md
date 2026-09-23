# J

Linux and system-administration terms beginning with J.

## Journal

**Definition:** A record used by a filesystem to support consistency recovery after interruption.

**Why it matters:** Journaling changes crash recovery behavior, not the need for backups.

**Inspect safely:**

```bash
tune2fs -l DEVICE 2>/dev/null | grep -i feature
```

**Common confusion:** A filesystem journal is different from the systemd journal.

## Journald

**Definition:** The systemd service that collects and stores structured journal events.

**Why it matters:** It is a primary source for boot and service investigation.

**Inspect safely:**

```bash
journalctl --disk-usage; systemctl status systemd-journald
```

**Common confusion:** Persistent storage depends on configuration and available paths.

## Job control

**Definition:** Shell features for managing foreground, background, stopped, and resumed jobs.

**Why it matters:** It helps interactive administrators control multiple commands.

**Inspect safely:**

```bash
jobs -l
```

**Common confusion:** A shell job is not the same as a system service or scheduled job.
