# Qwen Final 120-Hour Evidence Freeze

Public sources rechecked: 2026-07-04 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this before changing story, scope, demo claims, public URLs, or Devpost text during the final 120 hours. The goal is to freeze the submission around evidence that can be verified by judges, not around hopes that an account, credit, deployment, or upload will work later.

## Current Source Facts

- Devpost overview and official rules still list the submission deadline as July 9, 2026, 2:00 PM PDT.
- The deadline converts to July 10, 2026, 6:00 AM KST.
- Devpost overview currently exposes more than 6,500 participants, so late public assets must be easy for judges to open and understand without follow-up.
- Public resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credit request, Discord, first API call, model selection, and API-key setup.
- Official rules still require a project using Qwen models available on Qwen Cloud.
- Official rules require a public code repository, text description, track selection, architecture diagram, public demo video, Alibaba Cloud deployment proof, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Official rules use the stricter demo-video threshold: less than three minutes.
- Public discussion topics visible on July 4, 2026 KST still show account-region, credit, security-verification, Alibaba Cloud deployment, and non-Qwen-Cloud-provider risks.

## Freeze Rule

Freeze the public story to the local packet unless an item has captured proof:

| Claim area | Evidence required before live wording | Frozen fallback |
| --- | --- | --- |
| Qwen Cloud usage | Redacted `--qwen-status --use-qwen` output using entrant-owned API key | "Qwen-ready local prototype with guarded connector" |
| Alibaba Cloud deployment | Public repository code-file URL showing Alibaba Cloud service/API use | "deployment proof pending; no live deployment claim" |
| Working project access | Public URL, functioning demo, or test build instructions verified from a clean environment | "local reproducible test build" |
| Public repository | Entrant-owned public URL with README, license, source, sample input, and generated output | "repository publication pending" |
| Demo video | Public playback verified in private/incognito browser and runtime under 3 minutes | "recording not ready; do not paste video URL" |
| Architecture diagram | Judge-visible diagram link or repo path | "local diagram path only" |
| Deck/PDF | Public URL or Devpost attachment if required | "deck optional unless form requires it" |

## Final 120-Hour Lock Sequence

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `bash scripts/submission-readiness.sh`.
4. Fill only the external-proof rows that have proof in `submission/qwen-external-proof-packet.md`.
5. Rehearse public URL slots in `submission/qwen-d5-public-submission-rehearsal.md`.
6. For any missing proof, write the frozen fallback into `submission/qwen-devpost-field-lock.md`.
7. Do not update Devpost copy, README public claims, video script, or deck with live wording unless the evidence exists.
8. After public URLs exist, run the private-browser checks in `submission/qwen-public-url-smoke-test.md`.
9. Open `submission/qwen-final-devpost-submit-runbook.md` only after every required public field has a value or an explicit downgrade.

## Field Lock Copy

Use this sentence when live Qwen Cloud or Alibaba Cloud proof is incomplete:

> This submission is a Qwen-ready local prototype with a guarded Qwen Cloud connector. Live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until entrant-owned account setup, API-key configuration, and deployment proof are complete.

Use this sentence when proof exists:

> BidDesk Autopilot uses Qwen Cloud through the entrant-owned Qwen Cloud/DashScope API key and includes Alibaba Cloud deployment proof in the public repository.

Only use the proof-exists sentence after redacted Qwen output, Alibaba Cloud code-file proof, public repository, public video, architecture diagram, and working-project access are all verified.

## External Stop Lines

- Stop before Devpost login or `Join hackathon`; the entrant must own that account action.
- Stop before Qwen Cloud signup, voucher request, Discord join, API-key creation, or billing setup.
- Stop before Alibaba Cloud deployment, cloud spend, repository publication, video upload, deck publication, or public credential sharing.
- Stop before official rules acceptance and final Devpost `Submit project`.

## GO / DOWNGRADE / STOP

GO - final 120-hour evidence freeze ready if every public claim has either captured proof or an explicit frozen fallback, and all local validation commands pass.

DOWNGRADE - freeze prototype wording if live Qwen Cloud, Alibaba Cloud, public video, public repository, or judge-accessible working-project proof is incomplete.

STOP - external commitment required before any account action, cloud action, public upload, rules acceptance, or final Devpost `Submit project`.
