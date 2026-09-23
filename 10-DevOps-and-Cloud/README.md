# DevOps and Cloud on Linux

A practical Linux operations center for building, automating, securing, observing and maintaining the systems that support modern delivery, cloud, platform engineering and SRE workloads.

This section focuses on Linux responsibilities underneath CI/CD systems, cloud instances, image pipelines, containers, Kubernetes nodes, automation, registries, fleets, internal platforms and reliability systems. It does not replace complete vendor or cloud-provider training.

## Start here

1. Read [How to Use DevOps and Cloud](How-to-Use-DevOps-and-Cloud.md).
2. Follow the [Learning Path](Learning-Path.md).
3. Understand [Linux as a Platform](Linux-as-a-Platform.md).
4. Apply the [Responsibility Model](DevOps-and-Cloud-Responsibility-Model.md).
5. Follow [Automation Safety](Automation-Safety.md).
6. Prepare the [Environment and Lab Requirements](Environment-and-Lab-Requirements.md).
7. Use the [Production Readiness Standard](Production-Readiness-Standard.md).

## Domains

| Domain | Linux operations focus |
| --- | --- |
| [Foundations](Foundations/) | define the operating concepts that connect Linux, delivery systems, cloud platforms and reliability work |
| [CI CD](CI-CD/) | operate Linux build agents, runners and deployment execution safely and repeatably |
| [Cloud Servers](Cloud-Servers/) | manage the Linux instance lifecycle inside cloud responsibility boundaries |
| [Image Engineering](Image-Engineering/) | produce versioned, tested and supportable Linux machine images |
| [Containers](Containers/) | operate containers as constrained Linux processes with controlled images, resources, networking and storage |
| [Kubernetes Nodes](Kubernetes-Nodes/) | operate the Linux node that runs Kubernetes workloads and node agents |
| [Configuration Management](Configuration-Management/) | converge existing Linux systems toward declared operating state |
| [Infrastructure Automation](Infrastructure-Automation/) | declare, plan and change infrastructure resources through APIs with controlled state |
| [Artifact and Registry Operations](Artifact-and-Registry-Operations/) | store, identify, verify, promote and retire build outputs |
| [Fleet Management](Fleet-Management/) | control change, health, drift and lifecycle across large Linux populations |
| [Platform Engineering](Platform-Engineering/) | turn Linux and infrastructure capabilities into governed self-service products |
| [SRE](SRE/) | apply reliability objectives, evidence and engineering controls to Linux-hosted services |
| [Observability](Observability/) | produce, transport and use trustworthy metrics, logs, traces, events and profiles |
| [Production Integration](Production-Integration/) | connect source, build, infrastructure, configuration, deployment, security, telemetry and ownership before release |

## End-to-end model

    Source -> Build -> Test -> Package -> Sign -> Store
    -> Provision -> Configure -> Deploy -> Verify
    -> Observe -> Operate -> Recover -> Improve

Each stage must identify input, output, owner, identity, evidence, failure condition and recovery path.
