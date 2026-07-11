# Qwen D-2 External Action Lock

Public sources rechecked: 2026-07-07 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this as the final D-2 action lock before the entrant opens Devpost, Qwen Cloud, Alibaba Cloud, GitHub, YouTube/Vimeo/Youku, or a deck host. It does not ask the automation to log in, publish assets, accept rules, or click `Submit project`; it tells the entrant exactly what external evidence must exist before each claim survives.

## Current Source Facts

- Devpost overview, official rules, schedule, resources, participants, project gallery, and discussion surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 7, 2026 KST show about 6,836 participants.
- Public resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, pricing/free credits, and API-key documentation.
- Resources still list the OpenAI-compatible base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- The public requirement set still includes Qwen Cloud model usage, public repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging/testing.
- Alibaba Cloud proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- The official rules keep the stricter demo-video threshold at less than 3 minutes.
- Public discussion topics still surface Qwen Cloud credit delays, region or signup blockers, security verification blockers, Alibaba Cloud deployment questions, and Qwen Cloud provider-origin ambiguity.

## D-2 External Action Order

Run this order in one entrant-controlled browser session. Stop at the first required account, legal, payment, publication, or final-submit action that the entrant has not authorized.

1. Devpost: click `Join hackathon` only under the entrant account, then stop before official rules acceptance until all public proof links are ready.
2. Qwen Cloud: confirm account access, voucher or billing boundary, API-key availability, and model endpoint; do not paste keys into repository files.
3. Local live proof: run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` only after `QWEN_API_KEY` or `DASHSCOPE_API_KEY` is exported outside the repo.
4. Alibaba Cloud: deploy or verify the backend under the entrant account, then create the public repository code-file proof link showing Alibaba Cloud service/API use.
5. Public repository: publish source under the entrant identity with `README.md`, `LICENSE`, sample input, setup commands, and the Alibaba proof file.
6. Working project: verify a public app URL, functioning demo, or clean local test-build path from a private/incognito browser.
7. Demo video: upload only a less-than-3-minute public video; first 30 seconds must show business value, generated output, and proof boundaries.
8. Deck/PDF: publish only if Devpost exposes or requires a deck field; otherwise keep the local deck outline as support material.
9. Devpost fields: paste only the claim set supported by captured proof, then stop before official rules acceptance and final `Submit project` until the entrant confirms the final packet.

## Claim Lock Table

| Claim | Keep it only if this exists | Fallback if missing |
| --- | --- | --- |
| Uses Qwen Cloud live | Redacted live run output from entrant-owned Qwen Cloud/DashScope key | "Qwen-ready local prototype with guarded connector" |
| Backend deployed on Alibaba Cloud | Public repository code-file URL proving Alibaba Cloud service/API usage | Do not claim deployed backend; state local test build |
| Judge can test working project | Public app, functioning demo, or clean local test build instructions | Paste local test-build commands only |
| Public repository is ready | Public URL with license, source, sample, README, and setup path | Stop if repository URL is required |
| Demo video satisfies rules | Public YouTube/Vimeo/Youku URL under 3 minutes | Record or upload prototype-only video before submit |
| Track 4 fit is obvious | First paragraph names proposal workflow, ambiguous inputs, and human approval gates | Use `qwen-devpost-draft.md` without live-claim additions |

## Paste-Ready Testing Instructions

Use this if no hosted working project exists:

```text
Judges can test the project locally with synthetic sample data:
1. Clone the public repository.
2. Install uv.
3. Run: uv sync --all-groups
4. Run: uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json
5. Open reports/sample-proposal-packet.md and reports/sample-proposal-packet.json.

The repository includes deterministic sample data and no real customer information. Live Qwen Cloud usage should be evaluated only if the submitted proof shows a redacted entrant-owned Qwen Cloud run.
```

## GO / DOWNGRADE / STOP

GO - D-2 external action lock ready only if the entrant has verified Devpost enrollment, Qwen Cloud proof, Alibaba Cloud proof, public repository, working-project access, public less-than-3-minute demo video, final fields, and testing instructions.

DOWNGRADE - D-2 truthful prototype path if the public repository, local test build, architecture, sample report, and demo video are ready but live Qwen Cloud or Alibaba Cloud proof is missing.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
