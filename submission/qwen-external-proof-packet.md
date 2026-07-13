# Qwen External Proof Packet

Public sources rechecked: 2026-07-04 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Snapshot time: 2026-07-04 11:57 KST, about 5 days and 18 hours remaining.

Use this after `submission/qwen-d6-submission-control-board.md` and before public recording or Devpost paste. It is the one-page evidence ledger for the external facts the automation cannot create: account access, live Qwen proof, Alibaba Cloud proof, public URLs, and final judge access.

## July 4 Source Facts

- Devpost still lists the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost still frames the project requirement as building with Qwen models available on Qwen Cloud and fitting at least one track.
- The strongest track remains Track 4 Autopilot Agent, with Track 3 Agent Society as secondary multi-agent evidence.
- Public requirements still require a public open-source repository, Alibaba Cloud deployment proof, architecture diagram, public demo video, text description, and track identification.
- Public rules still require Alibaba Cloud deployment proof as a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Official rules still use the stricter less-than-3-minute demo-video threshold, so do not rely on any 5-minute summary.
- Public discussion surfaces still show account, credit, region, security verification, and Alibaba Cloud proof ambiguity as entrant-owned risks.

## Proof Ledger

| Proof | Required Evidence | Accepted Form | Redaction Rule | Claim Boundary |
| --- | --- | --- | --- | --- |
| Devpost enrollment | Entrant has joined the hackathon and can open project submission flow | Browser-visible joined state or project draft, not committed by automation | Hide email, profile details, team invite links, and private messages | Only say "submitted to Qwen Cloud Global AI Hackathon" after final entrant submit |
| Qwen Cloud account | Qwen Cloud account exists and API key can be created outside the repo | Entrant note plus redacted settings/API-key page or successful connector run | Never screenshot or paste full API keys, tokens, account IDs, billing, or recovery data | Say "Qwen-ready" until live connector proof passes |
| Hackathon credit/voucher | Credit/voucher requested or available for the entrant | Redacted voucher/status screen or explicit entrant status note | Hide email, coupon code, billing address, and payment data | Do not imply available production budget unless confirmed |
| Live Qwen connector | `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` succeeds with entrant-owned key | Redacted terminal output or generated report showing live connector status | Remove environment values and any request IDs that expose account state | Say "Qwen-powered" only after this proof exists |
| Alibaba Cloud deployment | Backend proof exists on Alibaba Cloud or a qualifying Alibaba Cloud service/API integration exists | Public repository code-file URL plus optional redacted runtime/deployment evidence | Hide console IDs, regions tied to private account risk, credentials, costs, and logs with secrets | Say "deployed on Alibaba Cloud" only after public code-file proof exists |
| Public repository | Entrant-owned repository is public and contains source, README, license, sample input, and setup path | Public GitHub/GitLab URL verified in private browser | Do not publish secrets, private policy docs, customer data, or cloud credentials | Say "open-source repository" only after private-browser verification |
| Working-project access | Judges can test through a website, functioning demo, or reproducible local test build | URL, test build instructions, or safe temporary non-admin credentials | Use synthetic data only; no personal, customer, billing, or admin credentials | Say "judge-accessible working project" only after clean verification |
| Public demo video | Public video under 3 minutes shows local flow, live Qwen proof if available, and Alibaba proof if available | YouTube, Vimeo, Facebook Video, Youku, or Devpost-accepted public video URL | Blur keys, accounts, emails, billing, and private cloud console details | If live proof is missing, record prototype-only wording |
| Architecture diagram | Diagram shows agents, Qwen Cloud boundary, backend/deployment proof, state, CLI/frontend, and human approval gates | Public repo file, deck slide, or Devpost image attachment | No private URLs, account IDs, or deployment secrets | Use the diagram only if it matches final proof state |
| Presentation deck/PDF | Deck explains problem, solution, architecture, demo, impact, and proof checklist | https://memekr.github.io/biddesk-autopilot/qwen-presentation.html and public repository PPTX URL | Remove private account details and any unverified metrics | GO after public browser check; do not claim live Alibaba deployment from the deck |

## Evidence Capture Order

1. Confirm Devpost join and project form access.
2. Confirm Qwen Cloud account, credits/voucher state, and API-key creation path.
3. Run live connector proof only after the entrant exports the key locally outside the repository.
4. Create or verify Alibaba Cloud deployment proof, then publish the required public repository code-file link.
5. Publish the repository and verify README, license, setup, sample request, and no-secret status in a private browser.
6. Verify judge access through a clean browser, clean checkout, or test build.
7. Record the less-than-3-minute demo using only verified claims.
8. Fill `submission/qwen-public-asset-ledger.md`, then run `submission/qwen-public-url-smoke-test.md`.
9. Lock the final Devpost fields in `submission/qwen-devpost-field-lock.md`.

## Ready-To-Paste Testing Instructions

Use this only after the corresponding proof is true:

> Judges can test BidDesk Autopilot from the public repository using the setup steps in the README and the included synthetic sample request. Run `uv sync --all-groups`, then `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`. If live Qwen Cloud proof is enabled for judging, the entrant will provide temporary non-admin test credentials or environment setup separately through Devpost testing instructions, with no production or customer data.

Prototype-only fallback:

> Judges can test the deterministic local prototype from the public repository using the README and synthetic sample request. The submission should be evaluated as Qwen-ready local software unless the final public proof ledger includes redacted live Qwen Cloud output and Alibaba Cloud deployment proof.

## GO / DOWNGRADE / STOP

GO - external proof packet ready if Devpost enrollment, Qwen Cloud proof, Alibaba Cloud proof, public repository, working-project access, architecture diagram, public demo video, and final Devpost field evidence all have matching URLs or redacted captures.

DOWNGRADE - external proof packet prototype path if repository, architecture, local test build, and demo video are public but live Qwen Cloud or Alibaba Cloud proof is incomplete; use only prototype wording from `submission/qwen-devpost-field-lock.md`.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API-key creation, cloud deployment, media upload, official rules acceptance, or final `Submit project`.
