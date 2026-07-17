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

BidDesk Autopilot uses Qwen Cloud through an OpenAI-compatible DashScope endpoint for long-context extraction, policy comparison, structured proposal drafting, and approval memo generation. The CLI includes a guarded `--qwen-status` connector check and an explicit `--use-qwen` live-call path. A redacted live Qwen Cloud run has been captured in `submission/qwen-live-call-evidence.md`, and the generated report includes `Qwen Cloud Live Summary`.

Alibaba Cloud backend deployment remains a separate proof gate. The repository includes a Function Compute handler candidate at `src/biddesk_autopilot/alibaba_function_compute.py`, but final copy should not claim the backend is running on Alibaba Cloud until the entrant completes deployment and captures public proof.

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

Claim live Qwen Cloud inference only alongside the redacted evidence packet and generated output. Do not claim live Alibaba Cloud backend deployment until a verified Function Compute deployment exists under the entrant account and the public proof link is available.
