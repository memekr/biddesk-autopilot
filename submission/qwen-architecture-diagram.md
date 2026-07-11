# Qwen Architecture Diagram

```mermaid
flowchart LR
    A["Customer RFP / Email / Attachments"] --> B["Intake Agent"]
    A --> N["Local CLI / Alibaba Cloud Endpoint"]
    N --> O["Qwen OpenAI-Compatible Connector"]
    O --> B
    B --> C["Structured Requirements"]
    C --> D["Research Agent"]
    C --> E["Policy Agent"]
    D --> F["Account + Technical Assumptions"]
    E --> G["Risk Flags + Policy Citations"]
    F --> H["Quote Agent"]
    G --> H
    H --> I["Proposal Packet + Quote Draft"]
    I --> J{"Approval Agent"}
    J -->|Low risk| K["Ready-to-send proposal draft"]
    J -->|Pricing/legal/delivery risk| L["Human Approval Queue"]
    L --> M["Approved / revise / stop decision"]

    subgraph Q["Qwen Cloud on Alibaba Cloud"]
        O
        B
        D
        E
        H
        J
    end
```

## Deployment Boundary

- Qwen model calls must run through Qwen Cloud.
- The local CLI exposes `--qwen-status` for connector verification and `--use-qwen` for the live call path after API-key setup.
- Backend deployment proof must come from Alibaba Cloud.
- The local demo can generate deterministic sample packets, but final Devpost copy should only claim live Qwen Cloud behavior after the deployed endpoint is verified.
