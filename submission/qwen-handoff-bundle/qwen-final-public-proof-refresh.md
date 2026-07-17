# Qwen Final Public Proof Refresh

Public sources rechecked: 2026-07-17 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Purpose: final pre-submit refresh of the public source facts and judge-visible proof URLs before the entrant opens Devpost project creation, Alibaba Cloud deployment, official rules acceptance, or final `Submit project`.

## Source Snapshot

- Devpost overview header still shows `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- Devpost rules still list the Submission Period ending July 20, 2026 at 2:00 PM Pacific Time.
- Devpost public surfaces show about 8,100 participants during this recheck.
- Devpost overview shows $45,000 in cash on the public event summary while the challenge copy and rules still describe track cash plus cloud-credit awards; avoid a single unsupported total-prize claim in final copy.
- Devpost rules still require a public open-source repository, text description, track selection, Alibaba Cloud deployment proof, architecture diagram, public demo video, and working-project access.
- Devpost rules still define Alibaba Cloud deployment proof as a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Devpost rules still require the demo video to be less than three minutes and publicly visible on YouTube, Vimeo, or Youku.
- Qwen Cloud challenge page still says the build period is May 26 to July 19, the submission deadline is July 20, and final deliverables include repository, demo video, deck, and project description.
- Qwen Cloud challenge page still says projects must use Qwen Cloud API and be deployed on Alibaba Cloud infrastructure.

## Public URL Refresh

Checked on 2026-07-17 21:14 KST:

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

GitHub API status during this refresh: `memekr/biddesk-autopilot` is public, default branch is `main`, homepage is `https://memekr.github.io/biddesk-autopilot/`, and latest pushed public state before this refresh was `2026-07-14T18:11:38Z`.

## Current Claim Boundary

- GO: public repository, README, license, sample data, static working-project demo, presentation preview, official YouTube demo, supplemental MP4 preview, redacted Qwen live-call evidence, and Alibaba Function Compute code-file candidate are judge-visible.
- DOWNGRADE: Alibaba Cloud live backend deployment remains unverified. Use prototype wording unless the entrant completes phone verification, deploys Function Compute under a verified no-payment/free-credit path, and records public proof.
- STOP: Devpost project creation still requires human image CAPTCHA completion, and Alibaba Cloud still requires entrant phone verification before deployment. Do not click final `Submit project` until those external gates are cleared and the preview matches this packet.

## Final Paste Implication

Use live Qwen wording only with the redacted live-call evidence. Use Alibaba wording only as a code-file candidate and deployment-pending boundary until live Function Compute proof exists. If Devpost treats live Alibaba deployment proof as mandatory and the entrant cannot complete verification, submit only if the form accepts the truthful downgrade; otherwise stop before final submit.

## Validation Commands

```bash
python3 scripts/qwen-deadline-status.py --fail-after-deadline
gh repo view memekr/biddesk-autopilot --json nameWithOwner,isPrivate,url,defaultBranchRef,pushedAt,homepageUrl,hasIssuesEnabled
curl -L -s -o /dev/null -w '%{http_code}' https://github.com/memekr/biddesk-autopilot
curl -L -s -o /dev/null -w '%{http_code}' https://raw.githubusercontent.com/memekr/biddesk-autopilot/main/.env
```

GO - continue toward final Qwen submission only if the entrant clears CAPTCHA/phone verification and every required public proof remains available.

DOWNGRADE - submit truthful prototype wording if Devpost accepts the public code-file candidate plus static demo while live Alibaba deployment proof is still pending.

STOP - external commitment required before CAPTCHA completion, phone verification, cloud deployment, official rules acceptance, or final Devpost `Submit project`.
