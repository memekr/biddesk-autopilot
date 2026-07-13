# Qwen Final External Blocker Matrix

Public sources rechecked: 2026-07-14 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Use this as the final stop sheet before any browser action that creates an account commitment, publishes a public asset, accepts rules, or submits the Devpost project. Local preparation is complete only when every row is either filled with entrant-owned evidence or downgraded in the Devpost copy.

## Current Source Facts

- Devpost overview and Official Rules section 1 show the deadline as July 20, 2026, 2:00 PM Pacific Time.
- Qwen Cloud challenge-page key dates show the build period as May 26 to July 19 and the submission deadline as July 20, 2026.
- Public Devpost surfaces visible on July 14, 2026 KST show about 7,826 participants.
- Rules require Qwen models available on Qwen Cloud, a public open-source repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the stricter demo-video threshold at less than 3 minutes.
- Devpost resources route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- The Qwen Cloud challenge page still asks for repository, demo video, deck, and project description.
- Public discussion and live-account surfaces still expose account-region, credit, security-verification, Alibaba Cloud deployment, and non-Qwen-provider ambiguity.
- Official Alibaba Cloud Function Compute product copy says first-time FC users can receive trial quota, but usage beyond trial quota is pay-as-you-go; do not deploy until the console path verifies a zero-cost/free-credit route for this entrant account.

## Exact External Blockers

| Blocker | Site | Button or action | Data required | Local fallback if missing |
| --- | --- | --- | --- | --- |
| Devpost enrollment | `https://qwencloud-hackathon.devpost.com/` | Joined July 11, 2026 KST | Entrant/team identity and eligibility facts | Complete; do not repeat |
| Devpost project creation | `https://devpost.com/submit-to/29966-global-ai-hackathon-series-with-qwen-cloud/manage/submissions` | `Create project` | Image reCAPTCHA challenge: `Select all images with bridges`, then `Verify` | Preserve Chrome tab; user must complete CAPTCHA |
| Official rules acceptance | Devpost project submission form | Rules/terms acceptance checkbox | Entrant confirmation | Stop before final submit |
| Qwen Cloud account | Official Qwen Cloud signup link from Devpost resources | Sign up / free trial | Entrant email, region, identity, billing/trial details if requested | Complete for account/API/live proof; keep voucher separate |
| Hackathon credits | Official coupon/credit form from Devpost resources | Request credits | Entrant email, phone, company/institution, job title | Avoid credit/voucher claim |
| Discord/community | Official Qwen Cloud Discord link from Devpost resources | Join server | Entrant Discord account | List as external blocker only |
| Qwen API key | Qwen Cloud/DashScope console | Created outside repo | Entrant-owned API key stored outside repo | Complete; never expose key |
| Live Qwen proof | Local terminal after entrant key exists | `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` | Redacted terminal output with no secret | Complete in `qwen-live-call-evidence.md` |
| Alibaba Cloud deployment | Alibaba Cloud international console and public repository | Google login then Function Compute deploy | Phone verification code sent to `82-010****7848`; zero-cost deployment path not yet verified | Preserve Chrome tab; do not claim Alibaba Cloud deployment |
| Alibaba Cloud proof code file | Public GitHub repository | Public Function Compute handler file | Public URL to `src/biddesk_autopilot/alibaba_function_compute.py` | GO as code-file candidate only; live deployment remains blocked |
| Public repository | GitHub under entrant identity | Published | Public URL, license, source, README, sample files | Complete |
| Working project access | GitHub Pages and repository test build | Verify judge-clean access | Public URL or exact clean-room commands; safe synthetic credentials only if private | Complete as static demo plus local test build; no Alibaba endpoint claim |
| Public demo video | YouTube/Vimeo/Youku or live Devpost-accepted host | Upload/publish video | Public URL, less-than-3-minute runtime, proof-visible first 30 seconds | YouTube chooser opens, but `fileChooser.setFiles` fails with `Not allowed`; enable Chrome extension file URL access |
| Public MP4 fallback | GitHub Pages | Public preview MP4 | Supplemental playback URL, hash match, clear non-official label | GO only as fallback evidence |
| Presentation deck/PDF | Public deck preview and public PPTX | Publish deck/PDF | Public URL based on `qwen-presentation-deck.md` | Complete |
| Devpost final project | Devpost project form | `Submit project` | All public URLs, track, testing instructions, eligibility, rules acceptance | Stop at ready-to-paste packet |

## Pre-Submit Sequence

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `python3 scripts/write-qwen-judge-clean-room-rehearsal.py`.
4. Run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
5. Open every public URL in a private/incognito browser.
6. Freeze Devpost copy from `submission/qwen-devpost-field-lock.md` and `submission/qwen-final-devpost-value-audit.md`.
7. Resume the preserved Chrome blockers only after the user completes the visible reCAPTCHA, enables file URL access, or enters the Alibaba phone verification code.
8. Stop before accepting official rules or clicking `Submit project`.

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
