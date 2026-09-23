# Production Linux Platform: Cleanup and Decommissioning

1. Freeze change and record final state.
2. Drain traffic and queued work.
3. Revoke operator and workload credentials.
4. Preserve or destroy data according to policy.
5. Remove services, policies, telemetry, routes, records, images, and automation.
6. Remove hosts, storage, snapshots, backups, and cost-generating resources when approved.
7. Verify no listener, trust, account, scheduled action, or secret remains.
8. Record decommission evidence and retained obligations.

Never run broad deletion against unresolved paths or accounts.

