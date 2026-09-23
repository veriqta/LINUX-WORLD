# Environment and Lab Requirements

Use disposable local VMs, containers, test cloud accounts or small test clusters. Separate lab identity, billing and networking from production.

## Minimum controls

- Synthetic repository and data
- Dedicated credentials with narrow scope
- Budget alert and resource expiration
- Private networking or tightly controlled exposure
- Snapshot or reproducible rebuild
- Version record for tools and providers
- Cleanup inventory and deletion verification

Never place real cloud credentials, registry tokens, kubeconfigs, SSH keys or state files in a public repository.
