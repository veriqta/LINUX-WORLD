# Automation Safety

Automation multiplies both correct and incorrect actions.

## Mandatory controls

- Verify account, region, cluster, workspace, inventory and target selectors.
- Protect credentials and state.
- Pin important tool, provider, module and artifact versions.
- Run validation and a read-only plan or check mode where supported.
- Review destructive actions and resource replacement.
- Bound concurrency and use rollout cohorts.
- Stop when telemetry is missing.
- Define rollback or roll-forward before apply.
- Preserve audit evidence and clean up test resources.

Preview modes can be incomplete. They support review but do not replace bounded runtime tests.
