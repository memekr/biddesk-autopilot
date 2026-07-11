# Qwen Final 96-Hour Judge Access Drill

Public sources rechecked: 2026-07-05 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this after `submission/qwen-final-120-hour-evidence-freeze.md` and before any public URL is pasted into Devpost. The goal is to prove that a judge can open the public assets, understand the Qwen and Alibaba Cloud evidence, and run or test the project without follow-up.

## Current Source Facts

- Devpost overview and rules still list the submission deadline as July 9, 2026, 2:00 PM PDT.
- Devpost resources currently expose more than 6,500 participants, so first-open clarity and private-browser URL checks are competitive requirements.
- Public rules still require a public repository, text description, track selection, architecture diagram, public demo video, Alibaba Cloud deployment proof, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Official rules use the stricter demo-video threshold: less than three minutes.
- Public resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, pricing/free credits, and API-key documentation.

## Drill Setup

Run locally before the external session:

```bash
cd /Users/mac/hackathon-agent/biddesk-autopilot
python3 scripts/qwen-deadline-status.py --fail-after-deadline
python3 scripts/write-qwen-source-recheck-snapshot.py
bash scripts/submission-readiness.sh
bash scripts/prepare-qwen-submission-handoff.sh
```

After the entrant publishes any public URL, repeat only the checks that can be done without logging in or accepting terms.

## Judge Access Table

| Item | Judge action | Pass condition | If missing |
| --- | --- | --- | --- |
| Public repository | Open logged out or in a private browser | README, license, source, sample input, generated output, and setup commands are visible | Do not paste repository URL |
| Local test build | Run README commands from a clean clone or exported bundle | Sample proposal packet regenerates without secrets | Use prototype wording and include local test build instructions |
| Qwen Cloud proof | Open redacted evidence or run entrant-owned proof command | Output shows `Qwen connector: configured` and live summary without exposing keys | Say "Qwen-ready local prototype with guarded connector" |
| Alibaba Cloud proof | Open public repository code-file URL | File visibly uses Alibaba Cloud services/APIs and matches deployment proof | Do not claim Alibaba Cloud deployment |
| Working project access | Open website, functioning demo, or test build path | Judge can test free of charge until judging ends | Provide reproducible local test build instructions |
| Architecture diagram | Open public diagram path or repository file | Diagram shows Qwen Cloud, backend, state/storage, CLI/frontend, and human gates | Use local repository path only |
| Demo video | Open public video in a private browser | Public playback works and runtime is less than 3 minutes | Do not paste video URL |
| Testing instructions | Read Devpost instructions as a judge | Uses synthetic data, no admin credentials, and exact commands or URL | Paste only local test build instructions |

## Clean-Room Commands

Use these as the judge-facing fallback when no hosted working project exists:

```bash
uv sync --all-groups
uv run biddesk-autopilot reports/sample-request.json \
  --out reports/sample-proposal-packet.md \
  --json reports/sample-proposal-packet.json
uv run biddesk-autopilot reports/sample-request.json --qwen-status
```

Only add this live Qwen command after the entrant creates an API key outside the repository:

```bash
export QWEN_API_KEY="redacted-entrant-owned-key"
export QWEN_BASE_URL="https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
export QWEN_MODEL="qwen-plus"
uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen
```

## Devpost Testing Instructions

Use this if every live proof item exists:

> Judges can open the public repository, follow the README setup commands, and test the sample request flow. The repository includes the architecture diagram, sample input, generated proposal packet, Qwen Cloud connector instructions, and Alibaba Cloud deployment proof code-file link. The hosted or test-build URL is provided above and uses only synthetic data.

Use this if live Qwen Cloud or Alibaba Cloud proof is incomplete:

> Judges can evaluate the local prototype by cloning the public repository and running the README commands with the included synthetic sample request. The Qwen Cloud connector is implemented and guarded, but live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until entrant-owned account setup, API-key configuration, and deployment proof are complete.

## Final 96-Hour Sequence

1. Re-run the deadline checker and source snapshot.
2. Rebuild the sample packet and handoff bundle.
3. Open the public repository URL in a private browser.
4. Verify the architecture diagram, README commands, sample input, generated output, and license are visible.
5. Verify the Qwen proof and Alibaba Cloud proof URLs, or lock the prototype fallback wording.
6. Verify the working-project access path, or paste clean-room local test build instructions.
7. Verify the public demo video runtime is less than 3 minutes.
8. Fill `submission/qwen-public-asset-ledger.md`.
9. Run `submission/qwen-public-url-smoke-test.md`.
10. Lock final fields with `submission/qwen-devpost-field-lock.md`.
11. Open `submission/qwen-final-devpost-submit-runbook.md` only after every required field has a public value or explicit downgrade wording.

## External Stop Lines

- Stop before Devpost login, `Join hackathon`, official rules acceptance, or final `Submit project`.
- Stop before Qwen Cloud signup, voucher request, Discord join, API-key creation, or billing setup.
- Stop before Alibaba Cloud deployment, cloud spend, repository publication, video upload, deck publication, or public credential sharing.
- Stop before inventing entrant facts, customer metrics, eligibility details, or live proof that was not captured.

## GO / DOWNGRADE / STOP

GO - final 96-hour judge access drill ready if every public URL opens in a private browser, local commands pass from the current packet, and every live claim has captured proof.

DOWNGRADE - use judge-accessible prototype wording if public local assets are ready but live Qwen Cloud, Alibaba Cloud, hosted project, or public video proof is incomplete.

STOP - external commitment required before account action, public publication, cloud action, rules acceptance, or final Devpost `Submit project`.
