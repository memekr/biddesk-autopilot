# Qwen Devpost Field Lock

Public sources rechecked: 2026-07-15 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Use this after the source snapshot, deployment proof gate, Alibaba Function Compute proof adapter, live connector gate, judging/testing access gate, and public URL smoke test are current. This sheet prevents the final Devpost form from drifting away from verified evidence.

## Source Facts

- Devpost overview and rules now show the deadline as July 20, 2026, 2:00 PM PDT.
- Qwen Cloud challenge page also says the submission deadline was extended to July 20, while coupon redemption remained July 9 at 11:59 PM GMT+7.
- Public Devpost surfaces visible on July 15, 2026 KST show about 7,883 participants.
- The public rules require a public code repository, text description, Alibaba Cloud deployment proof, architecture diagram, demonstration video, and track selection.
- Alibaba Cloud deployment proof must be a public repository code-file link that demonstrates use of Alibaba Cloud services and APIs.
- Devpost overview currently says the demo video can be on YouTube, Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, or Youku. Use the Official Rules host list unless the live form clearly accepts another host.
- Devpost rules require access to a working project for judging and testing through a website, functioning demo, or test build; private projects require testing credentials in the testing instructions.
- The Qwen Cloud challenge page still asks for a presentation PPT; the generated deck preview and committed PPTX now cover that asset.

## Locked Fields

| Devpost field or asset | Paste or attach from | Required external proof before paste | Decision |
| --- | --- | --- | --- |
| Project title | `submission/qwen-devpost-draft.md` | None | GO if title remains `BidDesk Autopilot: Qwen-Powered Proposal Operations` |
| Short description | `submission/qwen-devpost-draft.md` | None | GO if it says Qwen-powered only when live proof exists; otherwise keep Qwen-ready wording |
| Track | `submission/qwen-devpost-draft.md` | Devpost form exposes Track 4 | GO for Track 4 Autopilot Agent |
| Secondary track evidence | `submission/qwen-judging-criteria-map.md` | Form permits secondary explanation | GO only as supporting Agent Society evidence, not as a separate unverified submission |
| What it does | `submission/qwen-devpost-draft.md` | Sample packet still regenerates locally | GO after readiness passes |
| How it uses Qwen Cloud | `submission/qwen-live-connector-gate.md` | Redacted live run includes `Qwen Cloud Live Summary` | GO for live wording only after proof; DOWNGRADE to target API wording otherwise |
| Built with | `submission/qwen-devpost-draft.md` | No secret or account data included | GO |
| Repository URL | Entrant-owned public repository | Private/incognito browser shows README, LICENSE, source, sample input, and setup instructions | STOP until public URL exists |
| Demo video URL | https://youtu.be/mEV2CP06JQo | Public YouTube video opens in private/incognito browser and runtime is less than 3 minutes | GO after final private-browser recheck |
| Public MP4 preview | `submission/qwen-public-pages-video-fallback.md` | GitHub Pages MP4 opens without login and is labeled as supplemental evidence only | GO for description/testing evidence; do not use as the official video URL unless the live form accepts it |
| Architecture diagram | `submission/qwen-architecture-diagram.md` | Diagram is included in repo, deck, or public asset URL | GO if visible to judges |
| Alibaba Cloud proof | `submission/qwen-deployment-proof-gate.md` and `submission/qwen-alibaba-function-compute-proof-adapter.md` | Public code-file URL demonstrates Alibaba Cloud Function Compute handler/API usage; live deployment evidence is still required before claiming the backend is running on Alibaba Cloud | DOWNGRADE until public URL is pushed and live deployment proof exists |
| Working project/testing instructions | `submission/qwen-judging-testing-access-gate.md` | Static web demo or reproducible test build is accessible to judges without credentials | GO for static demo plus local test build; STOP for Alibaba endpoint claims until deployment proof exists |
| Presentation deck/PDF | `submission/qwen-presentation-deck.md`, https://memekr.github.io/biddesk-autopilot/qwen-presentation.html, and `submission/BidDesk-Autopilot-Qwen-presentation.pptx` | Public preview opens without login and PPTX is visible in the public repository | GO after public browser check passes |
| Blog/social prize URL | Entrant-owned public post | Optional public URL, no sensitive data | Leave blank unless entrant intentionally published it |
| Screenshots/images | Sample report and local terminal screenshots | No API keys, emails, account IDs, billing data, or private customer data | GO only after scrub |
| Eligibility/team info | Entrant only | Entrant has personally verified eligibility and team details | STOP for automation |
| Official rules acceptance | Entrant only | Entrant has personally reviewed the terms | STOP for automation |
| Final submit button | Entrant only | All rows above are GO or intentional DOWNGRADE | STOP for automation |

## Copy Boundary

Use live Qwen Cloud wording only when all of these are true:

- `QWEN_API_KEY` or `DASHSCOPE_API_KEY` was provided outside the repository.
- `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` completed with secrets redacted.
- The generated packet includes `Qwen Cloud Live Summary`.
- Alibaba Cloud deployment proof exists as a public repository code-file URL and any live-deployment claim is backed by deployment evidence, not only the code-file candidate.
- The public demo video at https://youtu.be/mEV2CP06JQo shows the demo path without exposing credentials; the GitHub Pages MP4 fallback is supplemental.

If any item is missing, use this downgrade sentence in the project description:

> This submission is a Qwen-ready local prototype with a guarded Qwen Cloud connector. Live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until the entrant completes account setup, API-key configuration, and deployment proof.

## Final Review Sequence

1. Run `bash scripts/submission-readiness.sh`.
2. Run `bash scripts/prepare-qwen-submission-handoff.sh`.
3. Open every external URL in a private/incognito browser.
4. Compare each Devpost field against the table above.
5. Remove any claim that lacks a public URL, generated artifact, or redacted live proof.
6. Confirm the Devpost project-creation CAPTCHA is complete; the July 14 KST blocker was `Select all images with bridges` plus `Verify`.
7. Confirm the official-host video URL exists at https://youtu.be/mEV2CP06JQo and still opens publicly.
8. Confirm Alibaba Cloud phone verification and zero-cost Function Compute deployment evidence exist before any live deployment claim; the July 14 KST blocker was a 6-digit code sent to `82-010****7848`.
9. Stop before rules acceptance or final submit unless every required row is GO or intentionally downgraded.

## GO / DOWNGRADE / STOP

GO - field lock ready only if every required Devpost field maps to a current local artifact and verified public URL.

DOWNGRADE - submit truthful prototype wording if the repository, demo video, architecture diagram, deck, and local test build are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, joining the hackathon, accepting official rules, creating credentials, adding private judge credentials, or clicking final `Submit project`.
