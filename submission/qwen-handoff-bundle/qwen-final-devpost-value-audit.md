# Qwen Final Devpost Value Audit

Public sources rechecked: 2026-07-05 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this after the final 96-hour judge access drill and before Devpost field lock. The goal is to catch field-level mistakes that can make an otherwise complete packet look lower-value or unverifiable to judges.

## Current Source Facts

- Devpost overview and rules still list the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces now show more than 6,600 participants, so the final page must make the project value, track fit, and evidence visible without judge interpretation.
- Rules require a project using Qwen models available on Qwen Cloud.
- Rules require a public open-source repository, architecture diagram, text description, track selection, Alibaba Cloud backend deployment proof, and public demo video.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Rules require the public demo video to be less than 3 minutes; use this stricter limit even if a challenge summary references 5 minutes or less.
- Rules require working-project access for judging and testing through a website, functioning demo, or test build.
- Resources list the OpenAI-compatible Qwen Cloud API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Gallery filters expose the official track names: Track 1 MemoryAgent, Track 2 AI Showrunner, Track 3 Agent Society, Track 4 Autopilot Agent, and Track 5 EdgeAgent.

## Field-Level Audit

| Devpost surface | Winning field value | Evidence source | Failure to catch |
| --- | --- | --- | --- |
| Track | Track 4: Autopilot Agent | `submission/qwen-devpost-draft.md`, README | Selecting Track 3 as primary and burying the business workflow fit |
| Secondary positioning | Track 3: Agent Society as support only | architecture diagram, judging map | Claiming multiple primary tracks if the form only accepts one |
| Title | BidDesk Autopilot: Qwen-Powered Proposal Operations | Devpost draft | Generic "AI proposal generator" title |
| Short description | Qwen-powered multi-agent system for messy RFPs, compliant proposals, risk flags, and approval-ready packets | Devpost draft | Unsupported revenue or customer claims |
| Repository URL | Public repo with README, license, source, sample request, setup, and generated output | public asset ledger, smoke test | Private repo, missing license, or no reproducible commands |
| Demo video URL | Public YouTube, Vimeo, or Youku URL under 3 minutes | video arbitration, recording capture | 3:00+ runtime, unlisted/private access failure, or no Qwen/Alibaba proof boundary |
| Working project access | Website, functioning demo, or test build instructions with synthetic data only | judging testing access gate | Private credentials omitted, admin credentials exposed, or local commands not tested |
| Qwen Cloud proof | Live connector output or truthful prototype downgrade | live connector gate | Claiming Qwen Cloud usage without entrant-owned API proof |
| Alibaba Cloud proof | Public repository code-file URL showing Alibaba Cloud services/APIs | deployment proof gate | Screenshot-only proof when rules ask for code-file link |
| Architecture | Diagram names Qwen Cloud, Alibaba Cloud proof boundary, agents, state, CLI/UI, and human approvals | architecture diagram | Diagram looks like a generic LLM app and hides governance |
| Presentation/deck | Public deck or PDF if the form exposes the field | presentation outline | Deck repeats README without proof links or scoring story |
| Testing instructions | Paste-ready judge instructions with no secrets | judging testing access gate | Telling judges to ask for access later |

## Judge-Visible Value Checks

- Problem value appears in the first two sentences: revenue teams convert messy RFP/email inputs into proposal packets with risk and approval controls.
- Agent autonomy is visible: intake, research, policy, quote, and approval agents each produce inspectable outputs.
- Human-in-the-loop governance is visible: pricing, legal, delivery, and customer commitments require approval.
- Qwen Cloud usage is either proven with the live connector path or explicitly downgraded to Qwen-ready prototype wording.
- Alibaba Cloud proof is represented as the exact public code-file link requested by the rules.
- The sample packet shows business output, not only logs or model prompts.
- The architecture diagram and testing instructions tell judges how to reproduce the path without private knowledge.

## Paste-Ready Fallback Line

Use this only if Qwen Cloud or Alibaba Cloud proof is incomplete at field lock:

> This submission is a Qwen-ready local prototype with a guarded Qwen Cloud connector and complete judge-reproducible demo packet; live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until entrant-owned cloud proof is captured.

## GO / DOWNGRADE / STOP

GO - final Devpost value audit ready only if every public field has a matching proof source, the primary track is Track 4 Autopilot Agent, the demo is less than 3 minutes, and the Alibaba Cloud proof is a public repository code-file link.

DOWNGRADE - use prototype value wording if the local packet, public repository, and demo are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, public video upload, deck publication, rules acceptance, or final `Submit project`.
