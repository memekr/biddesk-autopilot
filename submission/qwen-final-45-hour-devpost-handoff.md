# Qwen Final 45-Hour Devpost Handoff

Rechecked: 2026-07-19 09:20 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

UTC conversion: July 20, 2026, 9:00 PM UTC.

KST conversion: July 21, 2026, 6:00 AM KST.

Remaining at recheck: about 44 hours 39 minutes.

Purpose: preserve the latest signed-in Devpost state and public URL proof before
the entrant completes the human-only project-creation CAPTCHA, reviews the
official rules, or clicks final `Submit project`.

## Why This Target Still Gets The Slot

- Qwen Cloud remains the nearest active high-value deadline in this workspace.
- Public repository, static demo, official YouTube demo, deck preview, Qwen live
  evidence, architecture, local validation, and the handoff bundle are already
  strong enough for a truthful downgraded prototype submission.
- Final live eligibility still depends on external gates automation cannot
  complete: Devpost image CAPTCHA, Alibaba Cloud phone verification, and live
  Function Compute deployment proof.
- The highest-value unblocked action is preserving a fresh, exact handoff state
  so the entrant can finish the CAPTCHA and paste fields without claim drift.

## Current Public Source Snapshot

- Devpost overview and rules page headers still show `Deadline: Jul 20, 2026 @
  2:00pm PDT`.
- Devpost Official Rules section 1 still lists the Submission Period as May 26,
  2026, 8:00 AM Pacific Time through July 20, 2026, 2:00 PM Pacific Time.
- Devpost public pages and the signed-in manage page showed `Participants
  (8277)` during this recheck. Treat this as a live counter, not a locked final
  claim.
- Devpost public summary shows `$45,000 in cash`, while event copy still
  describes `$70K` or `$70,000+` across cash and cloud-credit awards. Final copy
  should not use one unsupported total prize number.
- Devpost requirements still include a public open-source repository, text
  description, selected track, Alibaba Cloud deployment proof, architecture
  diagram, public demo video, and working-project access.
- Devpost says Alibaba Cloud deployment proof is a public repository code-file
  link demonstrating Alibaba Cloud services/API usage.
- The Qwen Cloud challenge page still requires projects to use the Qwen Cloud
  API and be deployed on Alibaba Cloud infrastructure.
- The Qwen Cloud challenge page submission copy still asks for Devpost
  submission, GitHub repository, presentation PPT, project description, and demo
  video before the deadline.
- Devpost resources still publish the OpenAI-compatible API base URL
  `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.

## Signed-In Devpost Gate

Chrome opened the signed-in manage-submissions URL:

```text
https://devpost.com/submit-to/29966-global-ai-hackathon-series-with-qwen-cloud/manage/submissions
```

Observed state:

- Page title: `Devpost`.
- Navigation showed `My projects`, `Participants (8277)`, Resources, Rules, and
  Project gallery.
- The page showed `Start project`, `My hackathon projects`, `Start a Project to
  begin your submission and invite teammates`, and `Create project`.
- No stable existing Qwen project draft or edit URL was visible.
- The page contained reCAPTCHA anchor frames and challenge frames titled
  `recaptcha challenge expires in two minutes`.
- Automation did not answer or bypass CAPTCHA, did not create a project draft,
  did not paste fields, did not accept rules, and did not click final submit.

Resume instruction: keep the Chrome tab open at the manage-submissions page.
The entrant must complete the visible CAPTCHA manually, then immediately open
`submission/qwen-final-captcha-bridge-paste-sheet.md` for field paste. If the
CAPTCHA expires, reload the same manage URL and repeat the project-creation
step manually.

## Public URL Refresh

Checked on 2026-07-19 09:20 KST:

| Asset | URL | Result |
| --- | --- | --- |
| Public repository | https://github.com/memekr/biddesk-autopilot | HTTP 200 |
| README | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/README.md | HTTP 200 |
| License | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/LICENSE | HTTP 200 |
| Sample input | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/reports/sample-request.json | HTTP 200 |
| Sample output | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/reports/sample-proposal-packet.md | HTTP 200 |
| Alibaba Function Compute code-file candidate | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/src/biddesk_autopilot/alibaba_function_compute.py | HTTP 200 |
| Redacted Qwen live-call evidence | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/submission/qwen-live-call-evidence.md | HTTP 200 |
| Static working-project demo | https://memekr.github.io/biddesk-autopilot/ | HTTP 200 |
| Presentation preview | https://memekr.github.io/biddesk-autopilot/qwen-presentation.html | HTTP 200 |
| Supplemental MP4 preview | https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4 | HTTP 200 |
| Official YouTube demo oEmbed | https://www.youtube.com/oembed?url=https://youtu.be/mEV2CP06JQo&format=json | HTTP 200 |
| Public `.env` absence | https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/.env | HTTP 404 |

GitHub status during this refresh:

- `memekr/biddesk-autopilot` is public.
- Default branch is `main`.
- Homepage is `https://memekr.github.io/biddesk-autopilot/`.
- Latest public push was `2026-07-18T18:25:08Z`.
- GitHub Pages is enabled.
- Latest Pages build returned `status: built` for commit
  `5febda1477632d5367bf6f055ceffd0e61c658e2`, with no error message.

## Field Impact

- Repository URL remains GO.
- Official YouTube demo URL remains GO.
- Static working-project URL remains GO as a judge-accessible synthetic demo and
  local test-build path.
- Presentation preview and committed PPTX remain GO.
- Redacted Qwen live-call evidence remains GO for live Qwen wording.
- Alibaba Cloud proof remains DOWNGRADE/STOP for any live hosted-backend claim.
  The Function Compute handler is a public code-file candidate, not proof that a
  live endpoint is deployed.
- Devpost project creation remains STOP until the entrant completes image
  CAPTCHA and a stable draft exists.

## Immediate Final-Session Order

1. Keep this handoff open beside `submission/qwen-final-captcha-bridge-paste-sheet.md`.
2. Manually complete the Devpost project-creation CAPTCHA in the open Chrome tab.
3. Confirm a stable Devpost project draft or edit page exists.
4. Paste only the fields from the CAPTCHA bridge sheet.
5. Open every public URL above in a private browser before preview.
6. Keep the Alibaba sentence deployment-pending unless phone verification,
   zero-cost Function Compute deployment, and public proof are complete.
7. Stop before official rules acceptance or final submit if the form requires a
   hard-stop commitment, identity/tax/banking data, payment method, unsupported
   eligibility fact, or inaccessible proof URL.

## GO / DOWNGRADE / STOP

GO - final live Qwen wording only if Devpost draft access, public URLs, redacted
Qwen evidence, architecture, video, deck, testing path, and Alibaba deployment
proof all pass.

DOWNGRADE - submit truthful prototype wording if Devpost accepts the public
Function Compute code-file candidate and static demo while live Alibaba
deployment proof remains pending.

STOP - external commitment required before CAPTCHA completion, phone
verification, cloud deployment, official rules acceptance, or final Devpost
`Submit project`.
