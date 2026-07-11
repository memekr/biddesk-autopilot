# Qwen Recording Evidence Capture Sheet

Public sources rechecked: 2026-07-03 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this sheet immediately before recording the public demo video or the separate Alibaba Cloud deployment proof recording. It keeps the final media aligned with Devpost's public rules without exposing credentials, private account data, or unverified live Qwen claims.

## Current Source Facts

- Devpost overview still lists the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost official rules still require a public open-source repository, text description, Alibaba Cloud deployment proof, architecture diagram, public demo video, track selection, and working-project access for judging/testing.
- Devpost official rules say the demonstration video should be less than three (3) minutes and judges are not required to watch beyond three minutes.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credit request, Discord, first API call docs, model selection, pricing/free credits, and API-key documentation.
- Public resources still show the OpenAI-compatible API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.

## Demo Video Capture Plan

Target runtime: 2:30.

Hard stop: 2:55.

| Segment | Time box | Required visual proof | Spoken claim boundary |
| --- | ---: | --- | --- |
| Problem and input | 0:00-0:20 | `reports/sample-request.json` with synthetic request data | "BidDesk Autopilot turns messy proposal intake into an approval-ready packet." |
| Agent workflow | 0:20-0:50 | CLI command using `--qwen-status`, generated Markdown and JSON outputs | "Five specialized agents produce intake, research, policy, quote, and approval outputs." |
| Governance | 0:50-1:20 | Policy flags, approval questions, risk memo, audit trail | "Pricing, legal, delivery, and customer commitments stay behind human approval gates." |
| Qwen Cloud proof, if verified | 1:20-1:55 | `Qwen connector: configured`, redacted live summary, Qwen base URL/model, no keys | Say "live Qwen Cloud path" only after the live call succeeds. |
| Alibaba Cloud proof, if verified | 1:55-2:20 | Public backend URL or service evidence plus public repo proof-file link | Say "deployed on Alibaba Cloud" only after endpoint and repo proof exist. |
| Close | 2:20-2:30 | Architecture diagram or Devpost-ready packet index | "The submission is ready for judge testing with synthetic data." |

If Qwen Cloud or Alibaba Cloud proof is not complete, skip those segments and use the local prototype wording from `submission/qwen-devpost-draft.md`.

## Separate Alibaba Cloud Proof Recording

Use a short separate recording if Devpost or the entrant wants visual evidence in addition to the required public repository code-file link.

Capture:

1. Public repository page showing the proof code file path.
2. Proof code file demonstrating Alibaba Cloud service/API usage.
3. Deployed backend URL or service route, with private console identifiers hidden.
4. One synthetic request/response proving the backend is reachable.
5. README section that explains how judges can reproduce or inspect the deployment.

Do not capture:

- API keys, tokens, cookies, environment variable values, billing pages, personal email, account IDs, private project IDs, real customer data, or real revenue data.
- Any dashboard view that requires judges to infer the project from private-only state.

## Pre-Upload Verification

- [ ] Public demo video runtime is less than 3 minutes.
- [ ] Public video is viewable in a private/incognito browser.
- [ ] Video title/description do not claim live Qwen Cloud or Alibaba Cloud deployment unless proof exists.
- [ ] The Alibaba Cloud proof file URL opens without login.
- [ ] The public repository has a visible open-source license at the top-level repository page.
- [ ] The architecture diagram matches the final recorded path.
- [ ] Working-project URL or reproducible test-build instructions are ready for Devpost testing instructions.
- [ ] All visible data is synthetic or explicitly approved for public release by the entrant.

## GO / DOWNGRADE / STOP

GO - recording evidence ready only if the demo video, public repo, architecture diagram, working-project access, Qwen Cloud proof, and Alibaba Cloud proof all match the final Devpost claims.

DOWNGRADE - record prototype-only video if the local packet is ready but Qwen Cloud live proof or Alibaba Cloud deployment proof is incomplete. Use "Qwen-ready local prototype" and do not say "running on Qwen Cloud" or "deployed on Alibaba Cloud."

STOP - external commitment required before logging into Devpost, Qwen Cloud, Alibaba Cloud, YouTube, Vimeo, Youku, GitHub, accepting rules, publishing URLs, uploading media, adding judge credentials, or clicking final `Submit project`.
