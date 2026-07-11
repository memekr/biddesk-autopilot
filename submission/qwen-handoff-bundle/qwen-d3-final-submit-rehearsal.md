# Qwen D-3 Final Submit Rehearsal

Public sources rechecked: 2026-07-06 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this as the D-3 rehearsal sheet before the entrant starts the final browser session. It compresses the final proof, paste, and stop decisions into one dry run without logging in, accepting rules, publishing assets, or clicking `Submit project`.

## Current Source Facts

- Devpost overview, official rules, schedule, and resources still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 6, 2026 KST show about 6,773 participants.
- The public requirement set still includes Qwen Cloud model usage, public repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, public demo video, and working-project access for judging/testing.
- Alibaba Cloud proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- The official rules keep the stricter demo-video threshold at less than 3 minutes.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- Resources list the OpenAI-compatible base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.

## One-Session Dry Run

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
4. Open `submission/qwen-final-external-blocker-matrix.md` and mark each row as captured, downgraded, or blocked.
5. Open `submission/qwen-public-asset-ledger.md` and fill only real entrant-owned public URLs.
6. Open every public URL in a private/incognito browser and record the result in `submission/qwen-public-url-smoke-test.md`.
7. Open `submission/qwen-devpost-field-lock.md` and freeze the exact paste values.
8. Open `submission/qwen-final-devpost-submit-runbook.md` and rehearse the paste order without logging in or clicking external commitment buttons.
9. Stop before Devpost login, `Join hackathon`, rules acceptance, asset publication, cloud-account actions, or final `Submit project`.

## D-3 Proof Ledger

| Proof item | Required final value | D-3 dry-run decision |
| --- | --- | --- |
| Public repository | Public URL with `README.md`, `LICENSE`, source, sample input, and setup commands | Capture URL or downgrade to local test-build wording |
| Qwen Cloud proof | Redacted `--use-qwen` output from entrant-owned API key | Capture proof or avoid live Qwen claim |
| Alibaba Cloud proof | Public repository code-file URL proving Alibaba Cloud service/API use | Capture URL or avoid Alibaba deployment claim |
| Working-project access | Public app URL, functioning demo, or clean local test build instructions | Verify in private browser or use README commands |
| Demo video | Public YouTube/Vimeo/Facebook Video URL under 3 minutes | Verify runtime and first 30 seconds or record prototype-only video |
| Architecture diagram | Diagram location visible to judges | Use `submission/qwen-architecture-diagram.md` if no public deck field exists |
| Deck/PDF | Public URL only if Devpost exposes a deck field | Leave blank unless entrant publishes it |
| Testing instructions | Synthetic-data instructions and safe credentials only if intentionally created | Paste local test-build instructions if no hosted app exists |

## Paste-Ready Final Guardrail

Before final paste, compare every Devpost sentence against one of these proof states:

- Live proof captured: claim Qwen Cloud usage, Alibaba Cloud deployment, and hosted access only in the exact scope shown by the evidence.
- Prototype proof only: say the project is a Qwen-ready local prototype with a guarded Qwen Cloud connector and reproducible local test build.
- Missing public proof: leave the matching URL field blank if optional, or stop if the field is required for the hackathon submission.

## GO / DOWNGRADE / STOP

GO - D-3 final submit rehearsal ready only if deadline status is active, source snapshot is current, local sample generation works, public URLs pass private-browser checks, Devpost fields are frozen, and every live Qwen or Alibaba claim has entrant-owned proof.

DOWNGRADE - D-3 truthful prototype path if public repository, local test build, architecture, sample report, and demo video are ready but live Qwen Cloud or Alibaba Cloud proof is not captured.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, rules acceptance, or final Devpost `Submit project`.
