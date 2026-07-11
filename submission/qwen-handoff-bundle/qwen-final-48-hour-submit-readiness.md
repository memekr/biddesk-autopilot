# Qwen Final 48-Hour Submit Readiness

Public sources rechecked: 2026-07-08 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Generated from the July 8 KST public source check, with about 48 hours remaining before the KST deadline. Use this as the last local readiness pass before the entrant opens Devpost, Qwen Cloud, Alibaba Cloud, repository/video/deck hosts, or any final submit surface.

## Current Source Facts

- Devpost overview, schedule, official rules, resources, participant, project gallery, update, and discussion surfaces still show the deadline as July 9, 2026, 2:00 PM PDT.
- Local deadline conversion remains July 10, 2026, 6:00 AM KST.
- Public Devpost overview and participant surfaces visible on July 8, 2026 KST show about 7,028 participants.
- Official rules still require a public open-source repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, and public demo video.
- Official rules still require the demonstration video to be less than three minutes.
- Official rules still require access to a working project for judging and testing through a website, functioning demo, or test build.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- Public discussion surfaces still show late account-region, Qwen Cloud credit, security-verification, Alibaba Cloud, and non-Qwen-provider ambiguity risks.
- Public Qwen/Alibaba guidance continues to make Alibaba Cloud proof an eligibility risk: no proof means no deployment claim, and likely no eligible live-cloud submission.

## 48-Hour Submit Order

Do not spend this window adding new story material. Spend it proving that the existing story is publishable, judge-visible, and truthful.

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Run `bash scripts/submission-readiness.sh`.
4. Run `bash scripts/prepare-qwen-submission-handoff.sh`.
5. Verify the public repository in a logged-out or private browser after the entrant publishes it.
6. Verify the demo video URL opens publicly and is under three minutes.
7. Verify the working-project URL or clean local test-build instructions.
8. Verify the Qwen Cloud proof only if the entrant owns the API key and redacted output.
9. Verify the Alibaba Cloud proof only if the entrant owns the deployment and public repository code-file URL.
10. Paste Devpost fields only from `submission/qwen-devpost-field-lock.md` after every required proof link passes.

## Claim Gate

| Claim | Required proof before keeping it | If proof is missing |
| --- | --- | --- |
| Built with live Qwen Cloud | Redacted entrant-owned Qwen Cloud/DashScope call and no leaked key | Say "Qwen-ready local prototype with guarded Qwen connector" |
| Runs on Alibaba Cloud | Public repository code-file link showing Alibaba Cloud service/API use and backend deployment proof | Remove deployment wording; stop if Devpost treats proof as mandatory |
| Public open-source repo | Logged-out repository view opens README, source, license, sample input, and sample output | Do not paste the repo URL |
| Working project | Public app, functioning demo, or clean local test-build instructions work from scratch | Use local test-build instructions only |
| Public demo video | Public URL opens and runtime is less than three minutes | Re-record or publish only a truthful local-prototype video |
| Deck/PDF | Public URL opens without login if the form asks for it | Keep the deck local until the entrant publishes it |

## Final Paste Boundary

Use this wording if Qwen Cloud or Alibaba Cloud proof is incomplete:

```text
BidDesk Autopilot is submitted as a Qwen-ready local prototype with a guarded Qwen Cloud/DashScope connector and deterministic sample data. The repository, architecture, test commands, and sample proposal packet show the full multi-agent workflow. Live Qwen Cloud and Alibaba Cloud deployment claims should be evaluated only if the submitted proof links show redacted entrant-owned Qwen Cloud usage and Alibaba Cloud backend deployment evidence.
```

## External Stop Lines

- Devpost: stop before login, `Join hackathon`, official rules acceptance, or `Submit project`.
- Qwen Cloud: stop before signup, voucher request, Discord join, API-key creation, or billing/payment action.
- Alibaba Cloud: stop before deployment, region/billing commitment, or public proof publication.
- Public hosts: stop before publishing repository, video, deck, or working-project URLs under the entrant identity.
- Private data: never include API keys, account IDs, billing data, real customer data, tax data, or personal sensitive information in public assets.

## GO / DOWNGRADE / STOP

GO - final 48-hour submit readiness ready only if deadline check, source snapshot, local readiness, handoff bundle, public repository, Qwen proof, Alibaba proof, working-project access or test build, public less-than-three-minute video, architecture, and Devpost field lock are verified.

DOWNGRADE - final 48-hour truthful prototype path if repository, sample report, architecture, local test build, and public demo are ready but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, video upload, deck publication, official rules acceptance, or final Devpost `Submit project`.
