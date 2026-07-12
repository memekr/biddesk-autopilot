# Qwen Public Asset Ledger

Public sources rechecked: 2026-07-13 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Use this after the entrant has public URLs or proof links, and before `submission/qwen-public-url-smoke-test.md`, `submission/qwen-devpost-field-lock.md`, official rules acceptance, or the final Devpost `Submit project` button.

## Current Source Facts

- Devpost overview and rules now list the deadline as July 20, 2026, 2:00 PM PDT.
- Qwen Cloud challenge page also says the deadline was extended to July 20, while coupon redemption remained July 9 at 11:59 PM GMT+7.
- Public Devpost surfaces visible on July 13, 2026 KST show 7,716 participants.
- Devpost rules still require a public open-source repository, text description, architecture diagram, track selection, public demo video, Alibaba Cloud deployment proof, and working-project access for judging/testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Devpost overview currently says the demo video can be on YouTube, Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, or Youku. Use the Official Rules host list unless the live form clearly accepts another host.
- Devpost resources still list the Qwen Cloud OpenAI-compatible API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Public discussion topics visible during recent rechecks still show account, credit, region, security verification, and Alibaba Cloud deployment blockers; do not hide these behind optimistic copy.

## Asset Ledger

Fill the `Final URL or value` column only during the entrant-owned external session. Leave unknown rows blank rather than inventing a placeholder.

| Asset or field | Final URL or value | Required proof before use | Devpost destination | Decision |
| --- | --- | --- | --- | --- |
| Public repository | https://github.com/memekr/biddesk-autopilot | Private/incognito browser opens README, LICENSE, source, sample input, validation commands, and no secrets. | Repository URL | GO after public browser check passes. |
| Repository license | https://github.com/memekr/biddesk-autopilot/blob/main/LICENSE | Top-level MIT license is visible from the public repository. | Repository review evidence | GO after public browser check passes. |
| README setup path | https://github.com/memekr/biddesk-autopilot#local-demo | README explains local run, Qwen connector status, validation commands, and truth boundary. | Judges and project description support | GO after readiness passes. |
| Alibaba Cloud proof code file | https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py | Public repo code-file URL demonstrates Alibaba Cloud Function Compute handler/service usage. Live deployment must still be separately verified. | Alibaba Cloud deployment proof field or project description | GO as proof-code candidate after public browser check passes; DOWNGRADE for any live deployment claim until deployment evidence exists. |
| Alibaba Cloud proof recording |  | Separate recording, if used, hides account IDs, billing, private console identifiers, and secrets. | Optional supporting link or video notes | DOWNGRADE if only local proof exists. |
| Qwen Cloud live proof | https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-live-call-evidence.md | Redacted run log shows configured Qwen Cloud/DashScope API use and no API keys or account data. | "How it uses Qwen Cloud" copy and demo video | GO for synthetic local live proof only. |
| Demo video |  | Public YouTube, Vimeo, or Youku URL opens without login and runtime is less than 3 minutes. Local preupload asset can be rendered at `output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4`. | Demo video URL | STOP until public URL exists and duration passes. |
| Working project access | https://memekr.github.io/biddesk-autopilot/ and https://github.com/memekr/biddesk-autopilot#local-demo | Public static demo opens without login, and reproducible local test build works with synthetic data. | Testing instructions | GO as static demo plus local test build; do not claim Alibaba Cloud endpoint. |
| Test credentials, if needed |  | Entrant-created non-admin synthetic-data credentials only; no personal, billing, or production access. | Testing instructions | STOP for automation; entrant must decide. |
| Architecture diagram | https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-architecture-diagram.md | Diagram shows Qwen Cloud, backend, Alibaba Cloud proof path, state/data flow, and human approval gates. | Architecture diagram or repository/deck link | GO if visible to judges. |
| Presentation deck/PDF |  | Public deck or PDF matches final claims and opens without login if Devpost asks for it. | Deck/PDF field if present | STOP only if Devpost requires it and URL is missing. |
| Blog/social bonus post |  | Entrant-owned optional post, no sensitive data, no invented metrics. | Optional blog/social field | Leave blank unless entrant intentionally published it. |
| Screenshots/images |  | Scrubbed for API keys, emails, account IDs, billing data, customer data, and private endpoints. | Optional media fields | GO only after scrub. |
| Team/eligibility details |  | Entrant personally verifies team, country, age, employer, and tax/eligibility facts. | Devpost profile/form | STOP for automation. |
| Official rules acceptance |  | Entrant personally reviews terms in Devpost. | Rules checkbox | STOP for automation. |
| Final submit |  | Every required row above is GO or deliberately downgraded in copy. | `Submit project` button | STOP for automation. |

## Paste-Safe Claim Set

## July 12 Public Demo Verification

- GitHub Pages URL: https://memekr.github.io/biddesk-autopilot/
- Source commit: `e279c9ee92c495f73929fdb59d9bc534fcad7986`
- Pages source: `main` branch, `/docs` path.
- Public status: HTTP 200 for the Pages URL and raw `docs/index.html`.
- Secret boundary: raw `.env` returned HTTP 404.
- Browser smoke test: page title, proof gate, Devpost testing instructions,
  repository link, Qwen proof link, and Alibaba proof-pending boundary were
  visible from the public URL.

## July 12 Demo Video Preupload

- Render command: `bash scripts/render-qwen-demo-video.sh`
- Local MP4 output: `output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4`
- Validation outputs: `output/playwright/qwen-demo-video/ffprobe.json` and `output/playwright/qwen-demo-video/sha256.txt`
- Upload boundary: the MP4 is ready for public-host upload only after YouTube, Vimeo, or Youku account access is available; the Devpost video URL field remains blank until a private-browser public playback check passes.

## July 13 Alibaba Function Compute Code-File Candidate

- Source file: `src/biddesk_autopilot/alibaba_function_compute.py`
- Packet: `submission/qwen-alibaba-function-compute-proof-adapter.md`
- Public URL target: https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py
- Boundary: the code file demonstrates a Function Compute-compatible handler and sanitized FC runtime metadata, but it is not proof that the backend is already running on Alibaba Cloud until deployment evidence is captured.

Use live wording only when the repository, demo video, Qwen Cloud proof, Alibaba Cloud proof code-file URL, architecture diagram, and judge-access path are all verified.

If Qwen Cloud live proof or Alibaba Cloud deployment proof is missing, paste this instead:

> BidDesk Autopilot is a Qwen-ready local prototype with a guarded Qwen Cloud connector. Live Qwen Cloud and Alibaba Cloud deployment claims are withheld until entrant-owned account setup, API-key configuration, and Alibaba Cloud proof are complete.

## Private-Browser Order

1. Open the repository URL.
2. Open the Alibaba Cloud proof code-file URL.
3. Open the demo video URL and confirm runtime is less than 3 minutes.
4. Open the static web demo URL and follow the test build instructions from a clean checkout.
5. Open the deck/PDF URL if Devpost asks for it.
6. Open the architecture diagram location.
7. Compare this ledger with `submission/qwen-devpost-field-lock.md`.

## GO / DOWNGRADE / STOP

GO - public asset ledger ready only if every required public asset opens without login, all claims match proof, and no row exposes secrets or personal data.

DOWNGRADE - submit truthful prototype wording if local assets are ready but live Qwen Cloud or Alibaba Cloud deployment proof is incomplete.

STOP - external commitment required before Devpost login, joining the hackathon, Qwen Cloud signup, voucher request, Discord join, API-key creation, Alibaba Cloud deployment, repository publication, video upload, deck publication, adding judge credentials, rules acceptance, or final `Submit project`.
