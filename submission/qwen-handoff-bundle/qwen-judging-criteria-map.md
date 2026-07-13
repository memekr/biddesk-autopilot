# Qwen Judging Criteria Map

Public sources rechecked: 2026-07-01 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Source facts to preserve:

- Devpost overview still lists the deadline as July 9, 2026, 2:00 PM PDT.
- Public rules list the submission period as May 26, 2026, 8:00 AM PT through July 9, 2026, 2:00 PM PT.
- Devpost requirements call for a public open-source code repository, proof of Alibaba Cloud deployment, architecture diagram, public demo video, project description, and track selection.
- The resources page exposes the OpenAI-compatible API base URL `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Devpost judging criteria weight Technical Depth & Engineering at 30%, Innovation & AI Creativity at 30%, Problem Value & Impact at 25%, and Presentation & Documentation at 15%.

## Evidence Map

| Criterion | Public weight | BidDesk evidence to show | Proof source | Claim boundary |
| --- | ---: | --- | --- | --- |
| Technical Depth & Engineering | 30% | Guarded Qwen Cloud connector, structured agent outputs, deterministic offline fallback, pytest/ruff/ty checks, explicit human approval gates | `src/biddesk_autopilot/`, `tests/test_core.py`, `submission/qwen-live-connector-gate.md`, `reports/sample-proposal-packet.json` | Claim live Qwen Cloud API depth only after `--use-qwen` produces redacted live proof. |
| Innovation & AI Creativity | 30% | Five-agent society for intake, research, policy, quote, and approval, with risk-aware handoffs rather than one generic chatbot | `README.md`, `submission/qwen-architecture-diagram.md`, `submission/qwen-demo-script.md`, `reports/sample-proposal-packet.md` | Frame as multi-agent proposal operations; do not claim autonomous contract acceptance. |
| Problem Value & Impact | 25% | Real business workflow from messy RFI/email to quote-ready packet, focused on revenue operations speed and governance | `submission/qwen-devpost-draft.md`, `reports/sample-request.json`, `reports/sample-proposal-packet.md` | Use qualitative impact unless entrant supplies real customer, revenue, or time-savings data. |
| Presentation & Documentation | 15% | README, architecture diagram, sub-3-minute demo script, generated presentation deck, ready checklist, deployment proof gate | `README.md`, `submission/qwen-presentation-deck.md`, `submission/BidDesk-Autopilot-Qwen-presentation.pptx`, `submission/qwen-video-duration-arbitration.md`, `submission/qwen-ready-checklist.md` | Final deck/video URLs must be public and truth-bound before Devpost final submit. |

## Recording Priorities

1. Open with the business pain: messy RFPs and email threads delay revenue teams and create risky commitments.
2. Show the sample request input, then generate the proposal packet.
3. Point to separate outputs from each agent and the approval gates for pricing, legal, delivery, and customer commitments.
4. Show the architecture diagram with Qwen Cloud, Alibaba Cloud backend, CLI/API boundary, and generated packet.
5. If live proof exists, show the redacted `Qwen Cloud Live Summary`; otherwise say this is the local deterministic prototype prepared for Qwen Cloud deployment.
6. Close with the public repo, open-source license, deployment proof status, and exact track: Track 4 Autopilot Agent with Track 3 Agent Society evidence.

## GO / DOWNGRADE / STOP

GO - use full judging copy only if public repo, demo video, architecture diagram, Alibaba Cloud proof, and redacted Qwen Cloud live proof are all captured.

DOWNGRADE - use prototype judging copy if the local artifacts are public but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost join, Qwen Cloud signup, voucher request, Discord join, public repository publication, video upload, rules acceptance, or final submit.
