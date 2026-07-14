# Qwen Source Recheck Snapshot

Generated UTC: 2026-07-14T18:10:19+00:00

Generated KST: 2026-07-15T03:10:19+09:00

Visible header deadline PDT: 2026-07-20T14:00:00-07:00

Visible header deadline UTC: 2026-07-20T21:00:00+00:00

Visible header deadline KST: 2026-07-21T06:00:00+09:00

Official rules body deadline PDT: 2026-07-20T14:00:00-07:00

Official rules body deadline KST: 2026-07-21T06:00:00+09:00

Remaining: 6d 2h 49m

Phase: active submission window

## Public Sources Rechecked

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Devpost resources: https://qwencloud-hackathon.devpost.com/resources
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon

## Current Submission Facts

- Devpost deadline alignment reconfirmed during the July 15, 2026 KST recheck: the Devpost overview header, rules page header, and Official Rules section 1 show July 20, 2026, 2:00 PM Pacific Time, which is July 21, 2026, 6:00 AM KST.
- The July 8 deadline-extension arbitration is now historical for the Devpost header-versus-rules conflict, but it remains useful as a proof-quality guardrail.
- The Qwen Cloud challenge page says the submission deadline was extended to July 20 and marks the build period as May 26 to July 19.
- Devpost resources still say the last day to apply for the Qwen Cloud voucher is July 9 at 10AM PST; treat voucher, API-key, and credit setup as entrant-owned account actions.
- The Qwen Cloud challenge page separately says coupon redemption remained July 9 at 11:59 PM GMT+7 and late coupon requests will not be accepted.
- The Qwen Cloud challenge page technical requirements say projects must use the Qwen Cloud API and be deployed on Alibaba Cloud infrastructure.
- Devpost rules require a public code repository with visible open-source license, source, assets, and setup instructions.
- Devpost rules require proof that the backend runs on Alibaba Cloud.
- Devpost rules specify Alibaba Cloud deployment proof as a link to a code file in the public repository that demonstrates use of Alibaba Cloud services and APIs.
- Devpost rules require an architecture diagram, text description, track selection, and public demo video.
- The Devpost overview currently says the public video can be on YouTube, Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, or Youku. Prefer the Official Rules list unless the live form explicitly accepts another host.
- Devpost rules set the strict demo-video gate at less than 3 minutes.
- Devpost rules require access to a working project for judging and testing through a website, functioning demo, or test build.
- Devpost resources route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- Devpost resources list the OpenAI-compatible API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Public judging criteria weight Technical Depth & Engineering 30%, Innovation & AI Creativity 30%, Problem Value & Impact 25%, and Presentation & Documentation 15%.
- Public Devpost surfaces visible during the July 15, 2026 KST source refresh show about 7,883 participants, so final form values should make track fit, proof, and business value obvious without judge inference.
- A public Devpost update visible during the July 11, 2026 KST recheck emphasizes that projects must prove they ran on Alibaba Cloud and states that no proof means not eligible.
- Public discussion topics visible during the July 11, 2026 KST source recheck still show account-region, credit, security-verification, Alibaba Cloud, and non-Qwen-provider risk.
- The public static demo URL `https://memekr.github.io/biddesk-autopilot/` is the current judge-facing working-project URL for the synthetic workflow and test-build path; it is not Alibaba Cloud deployment proof.
- The repository now includes `src/biddesk_autopilot/alibaba_function_compute.py` as the Alibaba Cloud Function Compute handler code-file candidate; it is not live deployment proof until a Function Compute deployment is completed and verified under the entrant account.
- GitHub Pages was enabled from `main` `/docs` on July 12, 2026 KST and returned HTTP 200 for the static demo page during the public smoke test.
- The official public YouTube demo video is available at `https://youtu.be/mEV2CP06JQo`; YouTube Studio showed runtime `1:46`, public visibility, and no copyright issues found, and public oEmbed returned HTTP 200. The validated GitHub Pages MP4 remains supplemental preview evidence.
- The Qwen Cloud challenge page still asks for a presentation PPT; `submission/BidDesk-Autopilot-Qwen-presentation.pptx` and `docs/qwen-presentation.html` now provide the public deck asset without claiming live Alibaba Cloud deployment.

## Operator Decision

GO - continue live Qwen submission only if public repository, public video, Qwen Cloud proof,
Alibaba Cloud deployment proof, architecture diagram, and working-project access are verified.

DOWNGRADE - use Qwen-ready local prototype wording if public assets exist but Qwen Cloud or
Alibaba Cloud proof is missing.

STOP - external commitment required before Devpost login, account signup, credit request,
Discord join, API key creation, cloud deployment, rules acceptance, or final Devpost
`Submit project`.
