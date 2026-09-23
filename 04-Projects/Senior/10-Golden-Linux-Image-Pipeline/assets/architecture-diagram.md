# Golden Linux Image Pipeline: Reference Architecture

~~~mermaid
flowchart TD
    I["Identity and policy"] --> C["Control plane"]
    C --> W["Linux workloads"]
    W --> D["State and dependencies"]
    W --> O["Observability"]
    O --> H["Health gates"]
    H --> C
    D --> B["Backup and recovery"]
    B --> V["Integrity verification"]
~~~

