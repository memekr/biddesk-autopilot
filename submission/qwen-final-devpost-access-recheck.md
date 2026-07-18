# Qwen Final Devpost Access Recheck

Rechecked: 2026-07-18 09:18 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Purpose: last-mile check of the entrant's Devpost access state and public proof
URLs before any CAPTCHA completion, Alibaba Cloud deployment, rules acceptance,
or final `Submit project` action.

## Public Source Snapshot

- Devpost overview and rules still show `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- Devpost public pages now show `Participants (8176)`.
- The public Devpost summary shows `$45,000 in cash`, while the overview title
  and Qwen Cloud challenge page still describe `$70,000+` across cash and cloud
  credits. Final copy should avoid a single unsupported total-prize claim.
- Devpost Official Rules section 1 still lists the Submission Period as May 26,
  2026, 8:00 AM Pacific Time through July 20, 2026, 2:00 PM Pacific Time.
- Devpost rules still require a public open-source repository, text description,
  track selection, Alibaba Cloud deployment proof, architecture diagram, public
  demo video, and working-project access for judging/testing.
- Devpost rules still define Alibaba Cloud deployment proof as a code-file link
  in the public repository that demonstrates use of Alibaba Cloud services/APIs.
- Devpost rules still require the demo video to be less than three minutes and
  public on YouTube, Vimeo, or Youku.
- The Qwen Cloud challenge page still says the submission deadline was extended
  to July 20, coupon redemption remained July 9 at 11:59 PM GMT+7, projects must
  use Qwen Cloud API, and projects must be deployed on Alibaba Cloud
  infrastructure.
- The Qwen Cloud challenge page still lists final deliverables as repository,
  demo video, presentation PPT/deck, and project description.

## Chrome Devpost Access State

- Chrome opened `https://qwencloud-hackathon.devpost.com/` with the existing
  Devpost session.
- The page showed `My projects`, `Start project`, and `Participants (8176)`,
  indicating the session is logged in and the hackathon is already joined.
- The `My projects` link resolved to
  `https://devpost.com/submit-to/29966-global-ai-hackathon-series-with-qwen-cloud/manage/submissions`.
- The manage-submissions page did not show a stable existing draft project.
- The page showed `Start a Project to begin your submission and invite teammates`
  plus a `Create project` button.
- Clicking `Create project` did not create a draft. It triggered invisible
  reCAPTCHA frames and challenge frames titled
  `recaptcha challenge expires in two minutes`.
- No CAPTCHA bypass was attempted, no CAPTCHA answer was entered, and no project
  draft, final submit, payment, identity, tax, banking, travel, or employment/IP
  commitment was created.

## Public URL Recheck

Checked during this run:

| Asset | URL | Expected result |
| --- | --- | --- |
| Public repository | https://github.com/memekr/biddesk-autopilot | Public repo with README, LICENSE, source, sample input, and setup |
| Static working-project demo | https://memekr.github.io/biddesk-autopilot/ | Public synthetic workflow and testing path |
| Official demo video | https://youtu.be/mEV2CP06JQo | Public YouTube video under three minutes |
| Presentation preview | https://memekr.github.io/biddesk-autopilot/qwen-presentation.html | Public deck preview |
| Alibaba Function Compute code-file candidate | https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py | Code-file candidate only; not live deployment proof |
| Redacted Qwen live-call evidence | https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-live-call-evidence.md | Redacted live Qwen evidence without secrets |
| Public `.env` absence | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/.env | Must remain 404 |

## Final Paste Implication

- Use the official YouTube URL as the Devpost demo video field after a final
  browser recheck.
- Use the GitHub Pages static demo and public README local commands as working
  project/testing access.
- Use the Function Compute handler only as an Alibaba Cloud code-file candidate
  unless live Function Compute deployment proof is captured after phone
  verification under a verified no-payment/free-credit path.
- Keep the prize copy focused on track fit, technical depth, and business value;
  do not paste either `$45,000` or `$70,000+` as the only prize number.

## GO / DOWNGRADE / STOP

GO - final live Qwen submission only if Devpost project creation succeeds, public
URLs pass, Qwen Cloud proof remains redacted and public, Alibaba Cloud live
deployment proof exists, and final preview matches the field lock.

DOWNGRADE - submit truthful Qwen-ready prototype wording only if Devpost accepts
the public repository, demo video, deck, static working-project path, redacted
Qwen proof, and Alibaba code-file candidate while live Alibaba deployment proof
is still pending.

STOP - external commitment required before CAPTCHA completion, Alibaba Cloud
phone verification, cloud deployment, official rules acceptance, or final
Devpost `Submit project`.
