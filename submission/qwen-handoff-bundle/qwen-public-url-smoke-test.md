# Qwen Public URL Smoke Test

Public sources rechecked: 2026-07-18 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Run this after public URLs exist and before accepting rules or clicking the final Devpost `Submit project` button.

## Source Facts

- Devpost overview and rules page header list the deadline as July 20, 2026, 2:00 PM PDT.
- Qwen Cloud challenge page says the submission deadline was extended to July 20 while coupon redemption remained July 9 at 11:59 PM GMT+7.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- Devpost rules require a public code repository, proof that the backend runs on Alibaba Cloud, an architecture diagram, a text description, track selection, a public demo video, and working-project access for judging and testing.
- Devpost rules require Alibaba Cloud deployment proof as a link to a code file in the repository that demonstrates use of Alibaba Cloud services and APIs.
- Devpost rules use the stricter demo-video threshold of less than 3 minutes.
- Devpost resources list the OpenAI-compatible API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Public Devpost surfaces showed 8,194 to 8,197 participants during the July 18 source/browser refresh.
- Devpost public summary currently shows $45,000 in cash while the overview title and Qwen Cloud challenge page still describe $70,000+ across cash plus cloud-credit awards; keep final copy focused on track fit and proof rather than a single prize total.
- The Qwen Cloud challenge page still asks for a presentation PPT, so the deck preview and committed PPTX should be checked even if Devpost does not expose a separate deck field.

## Private-Browser Checks

Open a fresh private/incognito browser window with no entrant account logged in.

| Asset | URL to paste | Pass condition | Stop condition |
| --- | --- | --- | --- |
| Public repository | https://github.com/memekr/biddesk-autopilot | Repository loads without login and shows README, license, source, sample input, validation commands, and Qwen truth boundary. | Repo is private, missing license/setup, or contains secrets/customer data. |
| Alibaba Cloud deployment proof | Code-file URL in the public repository | File visibly demonstrates Alibaba Cloud service/API usage for the backend deployment proof. | Proof is only a private screenshot, vague README claim, or unrelated code. |
| Qwen Cloud proof | https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-live-call-evidence.md | Evidence shows Qwen Cloud/DashScope API usage without exposing keys, tokens, account IDs, billing data, or private endpoints. | Evidence contains secrets or only claims generic Qwen/Bedrock/local model usage. |
| Demo video | https://youtu.be/mEV2CP06JQo | YouTube video plays without login and runtime is less than 3 minutes; YouTube oEmbed returns HTTP 200. | Video is private, longer than 2:59, unavailable, hosted only on an unaccepted fallback, or claims unverified live cloud usage. |
| Public MP4 fallback | https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4 | GitHub Pages MP4 plays without login and is labeled as supplemental preview evidence only. | MP4 does not load, differs from the validated render, or is treated as the official Devpost video URL without live-form acceptance. |
| Working project access | https://memekr.github.io/biddesk-autopilot/ and https://github.com/memekr/biddesk-autopilot#local-demo | Static demo opens without login, and judges can reproduce the packet through the local test build with synthetic data. | Project requires undisclosed credentials, unsafe credentials, private customer data, unavailable cloud resources, or claims Alibaba Cloud deployment from the static page. |
| Presentation deck/PDF | https://memekr.github.io/biddesk-autopilot/qwen-presentation.html and https://github.com/memekr/biddesk-autopilot/blob/main/submission/BidDesk-Autopilot-Qwen-presentation.pptx | Preview opens without login, PPTX is visible in the public repo, and both match the final architecture, demo, and truth boundary. | Deck is private, stale, missing from public repo, or overclaims production/live proof. |
| Architecture diagram | https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-architecture-diagram.md | Diagram clearly shows Qwen Cloud, backend, Alibaba Cloud deployment, data flow, and human approval gates. | Diagram omits Qwen/Alibaba proof path or contradicts the submitted implementation. |

## Devpost Field Cross-Check

## July 12 Public URL Smoke Result

- Public repository raw README: HTTP 200.
- Public raw `docs/index.html`: HTTP 200.
- Public GitHub Pages demo: HTTP 200 at https://memekr.github.io/biddesk-autopilot/.
- Public raw `.env`: HTTP 404.
- GitHub Pages API status: `built`, HTTPS enforced, public, source `main` `/docs`.
- Chrome DOM smoke test confirmed `BidDesk Autopilot Demo`, `Proof Gate`,
  Devpost testing instructions, repository link, Qwen proof link, and the
  Alibaba Cloud proof-pending boundary.
- Result: working-project URL GO as static demo plus local test build; Alibaba
  Cloud deployment proof remains STOP.
- Local video preupload render path is ready through
  `scripts/render-qwen-demo-video.sh`.
- July 13 KST: the MP4 was copied to `docs/assets/` and embedded in the
  GitHub Pages demo as a public preview fallback. Public video URL remains STOP
  until the MP4 is uploaded to an Official Rules-accepted public host and
  verified in a private browser.
- July 14 KST: the presentation deck was exported to
  `submission/BidDesk-Autopilot-Qwen-presentation.pptx`, and a public preview
  page was added at https://memekr.github.io/biddesk-autopilot/qwen-presentation.html.
  Public deck URL is GO after the public push and private-browser checks pass.
- July 14 KST late recheck: Devpost project creation still stops at an image
  reCAPTCHA (`Select all images with bridges`), and Alibaba Cloud Google login
  stops at phone verification for `82-010****7848`. The official YouTube video
  is public at https://youtu.be/mEV2CP06JQo, with runtime `1:46` in YouTube
  Studio and HTTP 200 from YouTube oEmbed. No final submit or Alibaba Function
  Compute deployment evidence exists yet.
- July 15 KST source refresh: Devpost overview, Devpost rules, and the Qwen
  challenge page still align on the July 20, 2026 submission deadline, while
  public Devpost surfaces show about 7,883 participants.
- July 17 KST public proof refresh: GitHub repository, raw README, raw LICENSE,
  raw sample input, raw sample output, raw Function Compute handler, raw Qwen
  live-call evidence, GitHub Pages static demo, presentation preview, MP4
  preview, and YouTube oEmbed all returned HTTP 200. Public raw `.env` returned
  HTTP 404. Devpost overview/rules still show July 20, 2026 at 2:00 PM PDT,
  and public Devpost surfaces show about 8,100 participants.
- July 18 KST Devpost access recheck: Chrome showed the session had `My projects`
  access and `Participants (8176)`, but no stable existing draft was visible on
  the manage-submissions page. Clicking `Create project` triggered reCAPTCHA
  challenge frames titled `recaptcha challenge expires in two minutes`.
- July 18 15:15 KST final gate: Chrome showed `Participants (8197)`, no stable
  existing draft, and an active `Select all images with traffic lights`
  reCAPTCHA after `Create project`. No CAPTCHA answer, project draft, field
  paste, or final submit was created.
- July 18 21:18 KST public source refresh: unauthenticated Devpost overview and
  rules pages still showed the July 20, 2026 2:00 PM PDT deadline and public
  pages showed `Participants (8228)`. `submission/qwen-final-captcha-bridge-paste-sheet.md`
  now provides one post-CAPTCHA field/value sheet for final paste.

- Title and short description match `submission/qwen-devpost-draft.md`.
- Track is Track 4 Autopilot Agent; Track 3 Agent Society appears only as supporting evidence if the form allows it.
- Project description includes live Qwen Cloud and Alibaba Cloud claims only after the proof rows above pass.
- Testing instructions use only synthetic data and safe temporary non-admin credentials if credentials are unavoidable.
- No field contains API keys, account emails, billing identifiers, private customer data, or invented business metrics.
- Any blog/social bonus URL is optional and must be entrant-published; do not create it from automation.

## GO / DOWNGRADE / STOP

GO - public URLs ready only if every required URL opens in a private browser, the demo video is less than 3 minutes, the Alibaba Cloud proof is a repository code-file link, and Qwen Cloud proof is redacted.

DOWNGRADE - submit truthful prototype wording only if the public repo, local test build, diagram, deck, and demo video are ready but live Qwen Cloud or Alibaba Cloud deployment proof is incomplete.

STOP - external commitment required before creating cloud credentials, adding judge credentials, accepting official rules, or clicking final Devpost `Submit project`.
