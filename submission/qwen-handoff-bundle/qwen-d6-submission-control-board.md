# Qwen D-6 Submission Control Board

Public sources rechecked: 2026-07-04 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Snapshot time: 2026-07-04 05:56 KST, about 6 days remaining.

Use this as the day-by-day control board after opening `submission/qwen-final-operator-index.md`. It compresses the final packet into one operating sequence so the entrant can finish external proof capture without inventing new claims.

## July 4 KST Source Facts

- Devpost overview still lists the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost rules still list the submission period as May 26, 2026, 8:00 AM PT through July 9, 2026, 2:00 PM PT.
- Devpost overview still says the project must use Qwen models available on Qwen Cloud and fit at least one track.
- The strongest track remains Track 4 Autopilot Agent, with Track 3 Agent Society as supporting evidence only.
- Required submission assets still include a public open-source repository, Alibaba Cloud deployment proof, architecture diagram, public demo video, text description, and track identification.
- Alibaba Cloud deployment proof must be provided as a public repository code-file link showing use of Alibaba Cloud services and APIs.
- Devpost overview says the demo video is about 3 minutes and public on YouTube, Vimeo, or Facebook Video; official rules still use the stricter less-than-3-minute gate, so keep the public video below 3 minutes.
- Public judging criteria remain Technical Depth & Engineering 30%, Innovation & AI Creativity 30%, Problem Value & Impact 25%, and Presentation & Documentation 15%.

## Critical Path

1. External account proof: Devpost join, Qwen Cloud account, hackathon credit/voucher state, API key stored outside the repo, and Discord/community join if required.
2. Live model proof: run the local connector with entrant-owned `QWEN_API_KEY` or `DASHSCOPE_API_KEY`, capture redacted output, and do not print secrets.
3. Alibaba Cloud proof: deploy or expose the backend proof, then create the public repository code-file link showing Alibaba Cloud service/API usage.
4. Public assets: publish repository, demo video, working-project access, and deck/PDF only under the entrant identity.
5. Private-browser verification: run the smoke test against every public URL before any rules acceptance or final submit.
6. Devpost field lock: paste only claims with matching proof; downgrade to prototype wording if live Qwen or Alibaba proof is incomplete.

## Daily Execution Board

| Date KST | Finish By | Required Outcome | File To Open | Decision |
| --- | --- | --- | --- | --- |
| Jul 4 | 23:00 | Account and access status known: Devpost join, Qwen Cloud, credits, API key path, Discord/community, Alibaba Cloud account feasibility | `submission/qwen-account-risk-triage.md` | STOP if account, region, security review, or credit blockers prevent live proof |
| Jul 5 | 23:00 | Live Qwen connector proof captured or truthful downgrade selected | `submission/qwen-live-connector-gate.md` | GO only if redacted live output exists |
| Jul 6 | 23:00 | Alibaba Cloud deployment proof code-file URL planned and implemented by entrant | `submission/qwen-deployment-proof-gate.md` | STOP if no Alibaba Cloud backend proof can be made public |
| Jul 7 | 23:00 | Public repo, architecture diagram, deck/PDF, and working-project access are in a judge-checkable shape | `submission/qwen-public-asset-ledger.md` | DOWNGRADE if only local test build is available |
| Jul 8 | 18:00 | Demo video recorded under 3 minutes, redacted, public, and verified in private browser | `submission/qwen-recording-evidence-capture.md` | STOP if secrets, private data, or over-limit runtime remains |
| Jul 9 | 12:00 | All Devpost fields locked, public URLs pass, and submitter has reviewed official rules | `submission/qwen-final-devpost-submit-runbook.md` | Stop before rules acceptance and final `Submit project` |

## Non-Negotiable Claim Boundaries

- Say "Qwen-powered" only after live Qwen Cloud proof is captured.
- Say "deployed on Alibaba Cloud" only after backend proof and the required public code-file link exist.
- Say "judge-accessible working project" only after a website, functioning demo, or reproducible test build has been verified from a clean environment.
- Do not include API keys, access tokens, customer data, billing details, private account screens, or unredacted cloud console identifiers in public assets.
- Do not rely on a 5-minute demo interpretation; use the less-than-3-minute public video gate.

## GO / DOWNGRADE / STOP

GO - D-6 live submission path if account access, Qwen Cloud proof, Alibaba Cloud proof, public repository, working-project access, architecture diagram, public video, and final Devpost fields can all be completed before July 10, 2026, 6:00 AM KST.

DOWNGRADE - D-6 prototype submission path if public local artifacts can be published but live Qwen Cloud or Alibaba Cloud proof is incomplete; use only prototype wording from `submission/qwen-devpost-field-lock.md`.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API-key creation, cloud deployment, repository publication, media upload, deck publication, official rules acceptance, or final `Submit project`.
