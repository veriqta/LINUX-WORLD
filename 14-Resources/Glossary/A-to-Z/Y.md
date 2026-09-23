# Y

Linux and system-administration terms beginning with Y.

## YAML

**Definition:** A human-readable data-serialization language used by many automation and orchestration tools.

**Why it matters:** Indentation and data types can change configuration meaning.

**Inspect safely:**

```bash
python3 -c 'import yaml,sys; print(yaml.safe_load(sys.stdin))' 2>/dev/null
```

**Common confusion:** YAML is a data format, not a shell scripting language.

## YUM

**Definition:** A package-management interface historically used by RPM-based distributions and now commonly backed or replaced by DNF.

**Why it matters:** Older procedures and enterprise systems still reference it.

**Inspect safely:**

```bash
yum --version 2>/dev/null
```

**Common confusion:** The `yum` command may be a compatibility layer for DNF.
