# Qwen D-1 Final Submit Desk

Public sources rechecked: 2026-07-07 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this as the last pre-submit desk before the entrant opens the Devpost project form. It assumes local packet work is complete and narrows the final session to proof, paste, acceptance, and submit decisions that only the entrant can perform.

## Current Source Facts

- Devpost overview, official rules, resources, project gallery, participant, and discussion surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 7, 2026 KST show about 6,891 participants.
- Public resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, API-key documentation, first API call, and model selection.
- The public requirement set still includes Qwen Cloud model usage, public repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging/testing.
- Alibaba Cloud proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the strict demo-video threshold at less than 3 minutes.
- Public discussion surfaces still show practical risk around Qwen Cloud country or region signup, credits, security verification, Alibaba Cloud deployment, and non-Qwen-provider ambiguity.

## Final Desk Sequence

Run this as one entrant-owned session. Stop at the first unresolved proof or external commitment.

1. Deadline: run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`; stop if the deadline has passed.
2. Source snapshot: run `python3 scripts/write-qwen-source-recheck-snapshot.py`; open `submission/qwen-source-recheck-snapshot.md`.
3. Local packet: run `bash scripts/submission-readiness.sh`; do not change copy after this unless a proof link fails.
4. Public repository: open it in a private browser and verify `README.md`, `LICENSE`, source, sample input, setup commands, and Alibaba proof code-file URL.
5. Qwen Cloud proof: keep a redacted live-run capture only if it used entrant-owned Qwen Cloud/DashScope credentials outside the repository.
6. Alibaba Cloud proof: verify the public code-file URL demonstrates Alibaba Cloud service/API use and does not expose secrets.
7. Working project: verify a hosted app, functioning demo, or the local test-build instructions from a clean clone path.
8. Demo video: verify public visibility and runtime under 3 minutes before pasting the video URL.
9. Deck/PDF: paste a public URL only if Devpost exposes the deck field; otherwise keep the local outline as support material.
10. Devpost fields: paste only proof-backed wording from `submission/qwen-devpost-field-lock.md` and `submission/qwen-final-devpost-submit-runbook.md`.
11. Rules and submit: entrant reviews official rules, accepts them if eligible and willing, then clicks `Submit project`; automation stops before this step.

## D-1 Claim Decision

| Area | GO only if | Downgrade if missing |
| --- | --- | --- |
| Qwen Cloud usage | Redacted live run proves entrant-owned Qwen Cloud/DashScope call | "Qwen-ready local prototype with guarded Qwen connector" |
| Alibaba Cloud | Public repository code-file URL proves Alibaba Cloud service/API use | "Local test build; Alibaba deployment proof not yet captured" |
| Working access | Public app, functioning demo, or clean local test-build path works for judges | Paste local test-build commands only |
| Repository | Public repo contains license, source, setup path, sample data, and proof file | Stop if Devpost requires a repository URL |
| Demo video | Public video is under 3 minutes and shows value plus proof boundaries | Record/upload prototype-only video before submit |
| Field copy | Every live claim maps to a URL, capture, or local artifact | Remove live claim before paste |

## Paste-Ready Final Testing Instructions

Use this if no hosted working project exists:

```text
Judges can test BidDesk Autopilot locally with synthetic sample data:
1. Clone the public repository.
2. Install uv.
3. Run: uv sync --all-groups
4. Run: uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json
5. Open reports/sample-proposal-packet.md and reports/sample-proposal-packet.json.

The repository includes deterministic sample data and no real customer information. Live Qwen Cloud usage should be evaluated only if the submitted proof shows a redacted entrant-owned Qwen Cloud/DashScope run.
```

## Exact External Stop Lines

- Devpost: stop before `Join hackathon`, official rules acceptance, or `Submit project` unless the entrant is logged in, eligible, and intentionally proceeding.
- Qwen Cloud: stop before signup, voucher request, API-key creation, or any payment/billing action.
- Alibaba Cloud: stop before deployment or publication actions that require entrant account, billing, legal, or region commitments.
- Repository/video/deck hosts: stop before publishing under the entrant identity.
- Credentials: never paste API keys, admin credentials, payment data, real customer data, tax data, or personal sensitive data into local files or public assets.

## GO / DOWNGRADE / STOP

GO - D-1 final submit desk ready only if public repository, Qwen Cloud proof, Alibaba Cloud proof, working-project access or test build, public less-than-3-minute video, architecture, final fields, and testing instructions are verified.

DOWNGRADE - D-1 truthful prototype path if repository, sample report, architecture, local test build, and public demo are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
