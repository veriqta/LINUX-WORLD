# Automated Backup and Restore: Architecture Diagram

~~~mermaid
flowchart TD
    U["Learner or operator"] --> C["Validated configuration"]
    C --> I["Install and configure"]
    I --> S["Project state or service"]
    S --> V["Verification"]
    V --> T["Functional and security tests"]
    T --> F["Controlled failure"]
    F --> R["Recovery and re-verification"]
    R --> E["Sanitized portfolio evidence"]
~~~

## Reading the diagram

Configuration enters through a reviewed file. Setup creates only documented state. Verification and tests evaluate the result. Failure injection happens only in the lab. Recovery is verified before evidence is published.

