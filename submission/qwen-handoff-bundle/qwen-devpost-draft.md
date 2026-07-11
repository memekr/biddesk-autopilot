# Qwen Devpost Draft

## Title

BidDesk Autopilot: Qwen-Powered Proposal Operations

## Short Description

BidDesk Autopilot turns messy RFPs and customer email threads into compliant proposal packets, quote drafts, risk flags, and human approval tasks through a Qwen-powered multi-agent workflow.

## What It Does

BidDesk Autopilot coordinates five specialized agents:

- Intake Agent extracts requirements, deadlines, attachments, and missing facts.
- Research Agent prepares account and technical assumptions.
- Policy Agent checks pricing, legal, delivery, and compliance constraints.
- Quote Agent drafts line items, assumptions, and proposal language.
- Approval Agent routes risky commitments to human reviewers before anything is sent.

The demo shows a facilities-maintenance RFI becoming an approval-ready proposal packet with policy flags, quote lines, and human approval questions.

## How It Uses Qwen Cloud

The intended deployed version uses Qwen models on Qwen Cloud for long-context extraction, policy comparison, structured proposal drafting, and approval memo generation. The API boundary is OpenAI-compatible through the Qwen Cloud base URL. The CLI includes a guarded `--qwen-status` connector check and an explicit `--use-qwen` live-call path for the entrant's API key. Local deterministic output is used only for offline packet preparation until the entrant provides a Qwen Cloud API key and Alibaba Cloud deployment.

## Track

Primary: Track 4 Autopilot Agent.

Secondary evidence: Track 3 Agent Society because the system uses explicit multi-agent division of work, shared structured artifacts, and human escalation.

## Built With

Python, uv, Qwen Cloud target API, Alibaba Cloud target deployment, Devpost, Markdown, JSON.

## Presentation Deck Source

Use `submission/qwen-presentation-deck-outline.md` to build the required presentation deck. Keep any live Qwen Cloud, Alibaba Cloud deployment, or impact claims aligned with captured proof.

## Testing Instructions Source

Use `submission/qwen-judging-testing-access-gate.md` to complete Devpost testing instructions after the entrant has public repository, demo video, Alibaba Cloud endpoint or test build, and deployment proof URLs. Do not include personal accounts, billing access, admin credentials, API keys, or real customer data.

## Truth Boundary

Do not claim a live Qwen Cloud deployment until the backend is deployed on Alibaba Cloud, a Qwen Cloud API key is wired in, the generated packet includes `Qwen Cloud Live Summary`, and the demo video shows the live call path.
