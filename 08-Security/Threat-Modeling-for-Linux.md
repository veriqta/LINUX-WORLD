# Threat Modeling for Linux

Threat modeling turns a vague request to secure a server into explicit assets, actors, trust boundaries, abuse paths and controls.

## Method

1. Define system purpose and unacceptable outcomes.
2. Inventory data, identities, processes, listeners, packages and administrative paths.
3. Draw data flows and trust boundaries.
4. Identify entry points and privileged transitions.
5. Describe abuse cases affecting confidentiality, integrity and availability.
6. Rank risk using evidence and business impact.
7. Select preventive, detective, responsive and recovery controls.
8. Assign residual risk and review triggers.

| Element | Linux examples |
| --- | --- |
| Assets | credentials, configuration, data, logs, availability, package trust |
| Entry points | SSH, web ports, local login, APIs, removable media, update repositories |
| Privilege boundaries | sudo, setuid, capabilities, service identities, containers, kernel |
| Trust boundaries | host to network, container to host, user to root, service to database |
| Failure paths | credential theft, vulnerable service, policy drift, supply-chain compromise |

The model must be revised after architecture, exposure, identity, dependency or business-impact changes.
