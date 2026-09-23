# Toolkit Validation

The validation suite checks syntax, executable permissions, required documentation, Python compilation, help output, sensitive-data patterns, and test smoke paths.

## Run all checks

```bash
./Validation/validate-all.sh
```

Optional dependencies such as ShellCheck and pytest are used when installed. Missing optional tools are reported as skipped rather than silently installed.
