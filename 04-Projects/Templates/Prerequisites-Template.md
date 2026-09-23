# {{PROJECT_NAME}}: Prerequisites

## Knowledge

- {{REQUIRED_CONCEPT}}
- ability to inspect commands before running them;
- familiarity with the repository lab safety guidance.

## Lab resources

| Resource | Minimum | Recommended |
| --- | ---: | ---: |
| Hosts or virtual machines | {{COUNT}} | {{COUNT}} |
| CPU | {{COUNT}} vCPU | {{COUNT}} vCPU |
| Memory | {{SIZE}} | {{SIZE}} |
| Storage | {{SIZE}} | {{SIZE}} |
| Network | {{REQUIREMENT}} | {{REQUIREMENT}} |

## Software and access

- Supported distributions: {{DISTRIBUTIONS_AND_VERSIONS}}
- Required packages: {{PACKAGES}}
- Required privilege: {{PRIVILEGE_WITH_REASON}}
- External accounts or cost: {{NONE_OR_DETAILS}}

## Safety checks

- [ ] The environment is disposable or has a tested snapshot.
- [ ] The network does not expose an insecure service publicly.
- [ ] No real credentials or production data are present.
- [ ] Cleanup and rollback have been read.
- [ ] Failure tests are bounded to named lab resources.

## Preflight verification

Provide commands that verify operating system, kernel, privilege, disk, memory, network, time, required ports, dependencies, repositories, and snapshots. Explain pass and fail conditions.
