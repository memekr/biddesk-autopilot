# Qwen Account Risk Triage

Public sources rechecked: 2026-07-03 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this sheet before spending the final external session on recording or Devpost paste. It captures account and platform risks that cannot be fixed locally and prevents the submission copy from claiming Qwen Cloud or Alibaba Cloud proof that the entrant has not actually obtained.

## Current Source Facts

- Devpost overview and resources still list the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credit request, Discord, first API call, model selection, pricing/free credits, and API-key documentation.
- Public forum topics visible on July 3, 2026 KST include Qwen Cloud credit delays, country or region signup blockers, security verification blockers, Alibaba Cloud deployment questions, and whether non-Qwen-Cloud Qwen access satisfies the requirement.
- A public discussion answer says Qwen via Amazon Bedrock does not satisfy the Qwen Cloud requirement; final claims must stay tied to Qwen models available on Qwen Cloud.
- Devpost rules still require Alibaba Cloud backend deployment proof as a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Devpost rules still require access to a working project for judging and testing until the judging period ends.

## Final Account Preflight

Complete these rows before recording live-proof segments or pasting live Qwen/Alibaba claims:

| Gate | Entrant-owned check | Pass evidence | Stop condition |
| --- | --- | --- | --- |
| Devpost enrollment | Log in and confirm the hackathon shows joined/enrolled status. | Devpost project form is reachable for this hackathon. | `Join hackathon` still required or eligibility prompt unresolved. |
| Qwen Cloud signup | Confirm account can access Qwen Cloud in the entrant's country/region. | Qwen Cloud console opens without pending security or region review. | Account application, country selector, security review, or identity verification blocks access. |
| Hackathon credits | Confirm coupon/free-credit request status. | Credits available or entrant deliberately accepts paid/free-trial usage limits. | Credit application pending and no acceptable usage path exists. |
| API key | Create key outside the repository and set `QWEN_API_KEY` or `DASHSCOPE_API_KEY` locally. | `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` returns a redacted live summary. | No key, key invalid, quota exhausted, or output cannot be redacted safely. |
| Qwen Cloud origin | Confirm the model call uses Qwen Cloud/DashScope, not Bedrock, local Ollama, OpenRouter, or another proxy. | Output shows configured Qwen connector with the accepted base URL and model. | Live proof only shows a non-Qwen-Cloud provider. |
| Alibaba Cloud deployment | Confirm backend deployment is running on Alibaba Cloud. | Public repo code-file link shows Alibaba Cloud services or APIs used by the deployed backend. | Only screenshots, generic cloud claims, or non-Alibaba hosting exist. |
| Working project access | Confirm judges can reach a website, functioning demo, or test build. | Public URL or reproducible test build instructions work without private data. | Access depends on private account state or unavailable credentials. |

## Claim Boundary

Allowed after all live gates pass:

> BidDesk Autopilot uses Qwen models available on Qwen Cloud and includes Alibaba Cloud backend deployment proof in the public repository.

Allowed if the local packet is ready but account, credit, API-key, or Alibaba proof is incomplete:

> BidDesk Autopilot is a Qwen-ready local prototype with a guarded Qwen Cloud connector and a final handoff path for entrant-owned Qwen Cloud and Alibaba Cloud proof.

Do not claim any of these unless the matching evidence exists:

- running on Qwen Cloud,
- deployed on Alibaba Cloud,
- hackathon credits approved,
- judge-accessible hosted backend,
- direct compliance with all account eligibility prompts.

## GO / DOWNGRADE / STOP

GO - account proof ready only if Devpost enrollment, Qwen Cloud access, API key, live Qwen call, Alibaba Cloud proof, and working-project access are all verified.

DOWNGRADE - use Qwen-ready local prototype wording if the local packet is public and reproducible but any account, credit, API-key, live-call, or Alibaba deployment proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, credit/coupon request, Discord join, API-key creation, security verification, cloud deployment, paid usage, repository publication, rules acceptance, or final `Submit project`.
