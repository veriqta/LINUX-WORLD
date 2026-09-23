# Configuration Drift Detector: Architecture Diagram

~~~mermaid
flowchart TD
    U["User path"] --> G["Linux entry component"]
    G --> A["Primary service"]
    A --> D["Dependency or state"]
    G --> H["Health and traffic control"]
    A --> T["Telemetry"]
    T --> P["Operator response"]
    P --> V["Recovery verification"]
~~~

