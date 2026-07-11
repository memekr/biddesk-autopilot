# Qwen Final 36-Hour Eligibility Brief

Public sources rechecked: 2026-07-08 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Generated from the July 8 KST public source check. Use this as the last eligibility filter before recording, public URL verification, Devpost paste, official rules acceptance, or final submit.

## Current Source Facts

- Devpost overview, schedule, official rules, resources, participant, project gallery, update, and discussion surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost schedule still shows submissions ending July 9, 2026, 2:00 PM PDT and judging starting July 10, 2026, 8:00 AM PDT.
- Public Devpost surfaces visible on July 8, 2026 KST show about 6,997 to 7,004 participants.
- Qwen Cloud challenge guidance still routes entrants through Devpost registration, Qwen Cloud voucher claim, API-key creation, one of five tracks, and final Devpost deliverables.
- Final Devpost deliverables remain repository, demo video, deck, project description, architecture evidence, and working-project access for judging/testing.
- Official rules still require a public open-source repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, and public demo video.
- Alibaba Cloud proof remains an eligibility-critical item: the latest public update says the project must prove it ran on Alibaba Cloud and "No proof = not eligible."
- Alibaba Cloud proof must be represented in the public repository as a code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the strict demo-video threshold at less than three minutes, even if another Qwen page references a 5-minute-or-less asset.
- Public discussions still show practical risk around Qwen Cloud credits, country or region signup, security verification, Alibaba Cloud deployment, and provider-origin ambiguity.

## 36-Hour Eligibility Order

Do this order before polishing copy. A clear but downgraded submission is better than a stronger-sounding submission with unsupported eligibility claims.

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `bash scripts/submission-readiness.sh`.
4. Freeze the public repository contents: source, `README.md`, `LICENSE`, sample input, sample output, architecture, setup commands, and no secrets.
5. Capture Qwen Cloud proof only with entrant-owned credentials; if unavailable, use the Qwen-ready prototype wording.
6. Capture Alibaba Cloud proof before any deployment claim; if unavailable, remove eligibility-sensitive deployment wording and treat final submit as blocked or prototype-only depending on the Devpost form.
7. Verify working-project access through a public app, functioning demo, or clean local test-build instructions.
8. Verify the public demo video is visible and less than three minutes.
9. Verify deck/PDF URL only if the Devpost form asks for it.
10. Paste only field values supported by captured public evidence.

## Eligibility Claim Lock

| Evidence item | Keep this claim only if | Missing-proof action |
| --- | --- | --- |
| Qwen Cloud usage | Redacted live Qwen Cloud/DashScope call exists with no key leakage | Say "Qwen-ready local prototype with guarded Qwen connector" |
| Alibaba Cloud deployment | Public repo code-file URL demonstrates Alibaba Cloud service/API use, with backend proof captured | Remove deployment claims; stop if Devpost requires this as eligibility proof |
| Public repository | Logged-out or private-browser repository view opens README, source, license, and sample data | Do not paste repository URL until public |
| Working project | Public app, functioning demo, or clean local command path works from scratch | Paste local test-build instructions only |
| Demo video | Public URL opens and runtime is under three minutes | Re-record or upload prototype-only video before submit |
| Deck/PDF | Public URL opens without login if Devpost asks for it | Export PDF locally and publish only under entrant identity |

## Paste-Ready Prototype Boundary

Use this if live Qwen Cloud or Alibaba proof is incomplete:

```text
BidDesk Autopilot is a Qwen-ready local prototype with a guarded Qwen Cloud/DashScope connector. The included sample run uses deterministic synthetic data so judges can reproduce the proposal packet locally without secrets or customer data. Live Qwen Cloud and Alibaba Cloud deployment claims should be evaluated only if the submitted public proof links show redacted entrant-owned Qwen Cloud usage and Alibaba Cloud backend deployment evidence.
```

## Final Stop Lines

- Devpost: stop before login, `Join hackathon`, official rules acceptance, or `Submit project`.
- Qwen Cloud: stop before signup, voucher request, Discord join, API-key creation, or billing/payment action.
- Alibaba Cloud: stop before deployment, region/billing commitment, or public proof publication.
- Public hosts: stop before publishing repository, video, deck, or working-project URLs under the entrant identity.
- Private data: never include API keys, account IDs, billing data, real customer data, tax data, or personal sensitive information in public assets.

## GO / DOWNGRADE / STOP

GO - final 36-hour eligibility brief ready only if deadline check, source snapshot, local readiness, public repository, Qwen proof, Alibaba proof, working-project access or test build, public less-than-three-minute video, architecture, and Devpost field lock are verified.

DOWNGRADE - final 36-hour truthful prototype path if repository, sample report, architecture, local test build, and public demo are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
