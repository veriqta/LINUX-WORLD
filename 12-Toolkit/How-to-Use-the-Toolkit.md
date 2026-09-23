# How to Use the Toolkit

1. Choose a tool from the [Tool Index](./Tool-Index.md).
2. Read its README and help output.
3. Confirm dependencies, privileges, files, connections, and exit codes.
4. Run it in an isolated lab with fictional or redacted data.
5. Review output before sharing or automating it.
6. Add explicit thresholds and timeouts for the target service.
7. Run `./Validation/validate-all.sh` after changes.

A tool reports available evidence. It does not know the complete service architecture, business impact, approved risk, or local policy. Interpret results using baselines, healthy comparisons, recent changes, and user-path evidence.
