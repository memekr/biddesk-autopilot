# Qwen Final 60-Hour Command Center

Public sources rechecked: 2026-07-07 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Generated from the July 7 evening KST source check, with roughly 60 hours remaining before the KST deadline. Use this as the highest-priority sheet if there is only one more entrant-owned work block before recording, public URL verification, Devpost paste, rules acceptance, or final submit.

## Current Source Facts

- Devpost overview, schedule, official rules, resources, participant, and project gallery surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost schedule still shows submissions ending July 9, 2026, 2:00 PM PDT and judging starting July 10, 2026, 8:00 AM PDT.
- Public Devpost surfaces visible on July 7, 2026 KST show about 6,972 participants.
- Public resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- The public requirement set still includes Qwen Cloud model usage, public repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging/testing.
- Alibaba Cloud proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the strict demo-video threshold at less than three minutes.
- Public resource and discussion surfaces still show practical risk around account access, hackathon credits, region/security verification, Alibaba Cloud proof, and provider-origin ambiguity.

## 60-Hour Priority Order

Do not spend this window creating new story material unless every proof item below is already captured. The best win-probability move is proof alignment.

1. Deadline and source state: run `python3 scripts/qwen-deadline-status.py --fail-after-deadline` and `python3 scripts/write-qwen-source-recheck-snapshot.py`.
2. Local reproducibility: run `bash scripts/submission-readiness.sh`; use the generated sample packet as the fallback judge path.
3. Repository readiness: verify the public repository will include source, `README.md`, `LICENSE`, sample input, setup commands, and no secrets.
4. Qwen proof: capture a redacted entrant-owned Qwen Cloud/DashScope live run or remove live Qwen wording.
5. Alibaba proof: capture the public repository code-file URL showing Alibaba Cloud service/API use or downgrade deployment wording.
6. Judge access: verify hosted app, functioning demo, or clean local test-build instructions in a private browser or clean shell.
7. Video: record or verify a public video under three minutes that shows product value, generated output, proof boundaries, and fallback wording.
8. Devpost field lock: paste only wording supported by the public repository, video, architecture, sample packet, Qwen proof, and Alibaba proof.
9. Final submit: entrant alone reviews eligibility, accepts official rules, and clicks `Submit project`; automation stops before those actions.

## Proof-To-Claim Lock

| Claim in Devpost copy | Required proof before keeping it | Fallback if proof is missing |
| --- | --- | --- |
| Uses Qwen Cloud live | Redacted live call using entrant-owned Qwen Cloud/DashScope credentials | "Qwen-ready local prototype with guarded Qwen connector" |
| Backend deployed on Alibaba Cloud | Public repository code-file URL demonstrating Alibaba Cloud service/API use | "Local test build; Alibaba deployment proof not yet captured" |
| Judges can test the project | Public app, functioning demo, or clean local commands work without private data | Paste the local test-build instructions only |
| Repository is public and reproducible | Logged-out/private-browser repo check passes | Stop if the form requires a repository URL |
| Demo video is compliant | Public video is visible and under three minutes | Record/upload prototype-only video before submit |
| Track 4 Autopilot Agent fit | Demo shows autonomous proposal workflow plus human approval gates | Keep Track 4 but remove unsupported live-cloud claims |

## Paste-Ready Testing Instructions

Use this when no hosted working project exists:

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

- Devpost: stop before login, `Join hackathon`, official rules acceptance, or `Submit project` unless the entrant is logged in, eligible, and intentionally proceeding.
- Qwen Cloud: stop before signup, voucher request, API-key creation, Discord join, or any payment/billing action.
- Alibaba Cloud: stop before deployment, publication, billing, region, or legal commitments.
- Repository/video/deck hosts: stop before publishing under the entrant identity.
- Credentials and private data: never put API keys, admin credentials, payment data, tax data, real customer data, or personal sensitive data into local files or public assets.

## GO / DOWNGRADE / STOP

GO - final 60-hour command center ready only if deadline check, source snapshot, local readiness, public repository, Qwen proof, Alibaba proof, working-project access or test build, public less-than-three-minute video, architecture, field lock, and testing instructions are verified.

DOWNGRADE - final 60-hour truthful prototype path if repository, sample report, architecture, local test build, and public demo are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
