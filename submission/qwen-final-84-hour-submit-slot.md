# Qwen Final 84-Hour Submit Slot

Public sources rechecked: 2026-07-06 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this before `submission/qwen-final-72-hour-recording-lock.md` if this is the last uninterrupted work session before the final public recording, repository publication, Devpost paste, rules acceptance, or final submit. The goal is to leave only entrant-owned external commitments unresolved.

## Current Source Facts

- Devpost overview and official rules still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 6, 2026 KST show about 6,708 participants.
- Official rules still require a public code repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the stricter demo-video threshold at less than 3 minutes.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- The Qwen Cloud API path remains OpenAI-compatible at `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Public discussion surfaces still expose account-region, credit, security-verification, Alibaba Cloud deployment, and non-Qwen-provider ambiguity; these cannot be solved locally or claimed around.

## 84-Hour Slot Objective

At the end of this slot, the entrant should be able to open Devpost and paste from already locked local files without inventing claims in the browser. If any live proof is missing, the packet must already contain the truthful prototype fallback.

## Single-Sitting Sequence

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
4. Open `submission/qwen-final-operator-index.md` and keep its first-open order unchanged.
5. Open `submission/qwen-public-asset-ledger.md` and mark every missing URL as blank, not "pending."
6. Open `submission/qwen-devpost-field-lock.md` and confirm every field points to a local source or a verified public URL.
7. Open `submission/qwen-final-devpost-value-audit.md` and remove any unsupported live Qwen, Alibaba Cloud, hosted-project, or customer-impact claim from the browser paste plan.
8. Open `submission/qwen-recording-evidence-capture.md` and decide whether the video is a live Qwen demo or a Qwen-ready prototype demo before recording starts.
9. Open `submission/qwen-final-72-hour-recording-lock.md` before recording; do not change the first 30 seconds after recording unless the whole video is rechecked.
10. Open `submission/qwen-final-48-hour-public-proof-lock.md` only after public URLs exist and can be tested in a private/incognito browser.

## Field Freeze Rules

- Title stays `BidDesk Autopilot: Qwen-Powered Proposal Operations`.
- Primary track stays Track 4 Autopilot Agent.
- Track 3 Agent Society is supporting evidence only, not a substitute for the Track 4 story.
- Demo video must show generated proposal output, agent handoffs, approval gates, and proof boundaries in the first 30 seconds.
- Qwen Cloud usage can be claimed only with captured redacted live connector proof from entrant-owned credentials.
- Alibaba Cloud deployment can be claimed only with the required public repository code-file proof link.
- Hosted working-project access can be claimed only if the exact URL or test build path works from a judge-clean environment.
- Public repository, video, deck, architecture, and testing links must be verified in a private/incognito browser before final paste.

## Paste-Ready Browser Guardrail

If a Devpost field tempts a new claim, paste one of these instead:

> This submission is a Qwen-ready local prototype with a guarded OpenAI-compatible Qwen Cloud connector. Live Qwen Cloud usage will be claimed only after entrant-owned API proof is captured.

> Alibaba Cloud deployment is not claimed unless the required public repository code-file proof is available.

> Judges can test the current build through the public repository and README clean-room commands using the synthetic sample request.

## GO / DOWNGRADE / STOP

GO - final 84-hour submit slot ready only if the local packet, sample output, source snapshot, field lock, value audit, recording plan, and public proof lock all agree on the same verified claims.

DOWNGRADE - use Qwen-ready prototype wording if Qwen Cloud API proof, Alibaba Cloud deployment proof, hosted project access, public video, deck, or public repository publication is still missing.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, public video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
