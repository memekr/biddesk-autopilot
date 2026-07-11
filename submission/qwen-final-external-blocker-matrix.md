# Qwen Final External Blocker Matrix

Public sources rechecked: 2026-07-06 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this as the final stop sheet before any browser action that creates an account commitment, publishes a public asset, accepts rules, or submits the Devpost project. Local preparation is complete only when every row is either filled with entrant-owned evidence or downgraded in the Devpost copy.

## Current Source Facts

- Devpost overview, official rules, schedule, resources, and discussion surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 6, 2026 KST show about 6,725 participants.
- Rules require Qwen models available on Qwen Cloud, a public open-source repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the stricter demo-video threshold at less than 3 minutes.
- Devpost resources route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- Public discussion surfaces still expose account-region, credit, security-verification, Alibaba Cloud deployment, and non-Qwen-provider ambiguity.

## Exact External Blockers

| Blocker | Site | Button or action | Data required | Local fallback if missing |
| --- | --- | --- | --- | --- |
| Devpost enrollment | `https://qwencloud-hackathon.devpost.com/` | `Join hackathon` | Entrant/team identity and eligibility facts | Do not claim enrolled; keep packet ready-to-paste |
| Official rules acceptance | Devpost project submission form | Rules/terms acceptance checkbox | Entrant confirmation | Stop before final submit |
| Qwen Cloud account | Official Qwen Cloud signup link from Devpost resources | Sign up / free trial | Entrant email, region, identity, billing/trial details if requested | Use Qwen-ready prototype wording |
| Hackathon credits | Official coupon/credit form from Devpost resources | Request credits | Entrant email/account details | Avoid live Qwen usage claim |
| Discord/community | Official Qwen Cloud Discord link from Devpost resources | Join server | Entrant Discord account | List as external blocker only |
| Qwen API key | Qwen Cloud/DashScope console | Create/copy API key | Entrant-owned API key stored outside repo | Run only `--qwen-status`; do not run `--use-qwen` |
| Live Qwen proof | Local terminal after entrant key exists | `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` | Redacted terminal output with no secret | Say live Qwen proof not captured |
| Alibaba Cloud deployment | Alibaba Cloud console and public repository | Deploy backend; add proof code file | Entrant cloud account, deployment, public code-file URL | Do not claim Alibaba Cloud deployment |
| Public repository | GitHub or equivalent under entrant identity | Publish repository | Public URL, license, source, README, sample files | Use local test-build wording only |
| Working project access | Public app URL or repository test build | Verify judge-clean access | Public URL or exact clean-room commands; safe synthetic credentials only if private | Point judges to reproducible README commands |
| Public demo video | YouTube/Vimeo/Loom or Devpost-supported host | Upload/publish video | Public URL, less-than-3-minute runtime, proof-visible first 30 seconds | Record local prototype only; leave URL blank until public |
| Presentation deck/PDF | Public deck/PDF host if Devpost asks | Publish deck/PDF | Public URL based on `qwen-presentation-deck-outline.md` | Use local outline as source only |
| Devpost final project | Devpost project form | `Submit project` | All public URLs, track, testing instructions, eligibility, rules acceptance | Stop at ready-to-paste packet |

## Pre-Submit Sequence

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
4. Fill the blocker table with real entrant-owned evidence or leave the row blank.
5. Open every public URL in a private/incognito browser.
6. Freeze Devpost copy from `submission/qwen-devpost-field-lock.md` and `submission/qwen-final-devpost-value-audit.md`.
7. Stop before accepting official rules or clicking `Submit project`.

## Paste-Ready Downgrade Lines

Use this if Qwen Cloud proof is missing:

> This submission is a Qwen-ready local prototype with a guarded OpenAI-compatible Qwen Cloud connector. Live Qwen Cloud usage is not claimed because entrant-owned API proof has not been captured.

Use this if Alibaba Cloud proof is missing:

> Alibaba Cloud deployment is not claimed in this version because the required public repository code-file proof has not been captured.

Use this if hosted access is missing:

> Judges can test the project through the public repository using the README clean-room commands and synthetic sample request.

## GO / DOWNGRADE / STOP

GO - final external blockers cleared only if Devpost enrollment, public repository, public demo video, Qwen proof, Alibaba proof, working-project access, architecture, and required testing instructions are all backed by entrant-owned evidence.

DOWNGRADE - submit truthful prototype wording if local artifacts are public and reproducible but Qwen Cloud proof, Alibaba Cloud proof, hosted access, public deck, or other external evidence is missing.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, public video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
