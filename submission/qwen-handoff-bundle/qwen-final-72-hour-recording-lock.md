# Qwen Final 72-Hour Recording Lock

Public sources rechecked: 2026-07-05 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this after `submission/qwen-final-devpost-value-audit.md` and before final recording, public video upload, Devpost field lock, or final submit. The goal is to make the first 30 seconds of the judge experience prove value, track fit, and evidence boundaries without requiring the judge to inspect every artifact.

## Current Source Facts

- Devpost overview and rules still list the submission deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 5, 2026 KST show more than 6,600 participants; the final video must state the business problem, track, and evidence path immediately.
- Rules require a project using Qwen models available on Qwen Cloud.
- Rules require a public repository, architecture diagram, text description, track selection, Alibaba Cloud backend deployment proof, and public demo video.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules require the demo video to be less than 3 minutes. Keep the final cut at 2:30 target and 2:55 hard stop.
- Rules require working-project access for judging and testing through a website, functioning demo, or test build.
- Resources list the OpenAI-compatible Qwen Cloud API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.

## First 30 Seconds Lock

Open the recording with this sequence:

1. State: "BidDesk Autopilot is a Track 4 Autopilot Agent for proposal operations."
2. Show the messy RFP/customer request and say it turns unstructured intake into a proposal packet, risk memo, quote draft, and approval questions.
3. Show the generated packet, not slides, before explaining architecture.
4. Name the agent chain: intake, research, policy, quote, and approval.
5. State the truth boundary:
   - live path: "This run uses Qwen Cloud through the guarded connector and the Alibaba Cloud proof link is in the public repository."
   - prototype path: "This is a Qwen-ready local prototype; live Qwen Cloud and Alibaba Cloud claims are intentionally withheld until entrant-owned proof is captured."

Do not open with prize language, generic AI-agent claims, team background, account pages, or a slide-only intro.

## Required Recording Evidence

| Timestamp target | Screen | Required proof | If unavailable |
| --- | --- | --- | --- |
| 0:00-0:30 | Sample request and generated packet | Problem value and Track 4 fit are visible | Re-record intro |
| 0:30-1:15 | CLI run and generated Markdown | Reproducible local path, sample data, no secrets | Use clean-room local test build wording |
| 1:15-1:45 | JSON or architecture diagram | Five-agent workflow and human approval gates | Do not claim agent society depth beyond local evidence |
| 1:45-2:20 | Qwen connector or fallback boundary | `--qwen-status`, live Qwen proof if available, redacted environment | Say Qwen-ready local prototype |
| 2:20-2:45 | Alibaba proof and public asset ledger | Public repository code-file link, if available | Do not claim Alibaba Cloud deployment |
| 2:45-2:55 | Closing field lock | Repository, demo, testing instructions, and truth boundary | Cut anything that pushes runtime to 3:00 |

## Judge-First Video Checklist

- The public video runtime is less than 3 minutes before upload.
- The first visible artifact is the product output or sample request, not an account console.
- The narration says "Track 4 Autopilot Agent" once in the first 30 seconds.
- The demo shows the human approval gate for pricing, legal, delivery, or customer commitments.
- Qwen Cloud proof is shown only if the entrant has an owned API key and redacted live output.
- Alibaba Cloud deployment is claimed only if the public repository contains the code-file proof link required by the rules.
- The recording never exposes API keys, account IDs, billing pages, customer data, private credentials, or unpublished repository URLs.
- The closing line tells judges exactly how to test the project: public URL if available, otherwise README clean-room commands.

## Paste-Ready Video Description

Use this if live Qwen and Alibaba proof are complete:

> Demo of BidDesk Autopilot, a Track 4 Autopilot Agent that turns messy RFP/customer requests into proposal packets, risk memos, quote drafts, and approval gates using Qwen Cloud. Public repository, architecture, Alibaba Cloud proof code-file link, and testing instructions are included in the Devpost submission.

Use this if external proof is incomplete:

> Demo of BidDesk Autopilot, a Qwen-ready Track 4 Autopilot Agent prototype. The local packet is judge-reproducible with synthetic data and a guarded Qwen Cloud connector; live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until entrant-owned proof is captured.

## GO / DOWNGRADE / STOP

GO - final 72-hour recording lock ready only if the demo is less than 3 minutes, opens with product value and Track 4 fit, shows the agent workflow and human approval gate, and every Qwen/Alibaba claim has captured proof.

DOWNGRADE - record the Qwen-ready prototype path if public local assets are ready but live Qwen Cloud, Alibaba Cloud, hosted project, or public video proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, public video upload, deck publication, rules acceptance, or final `Submit project`.
