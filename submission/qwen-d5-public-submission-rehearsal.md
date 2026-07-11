# Qwen D-5 Public Submission Rehearsal

Public sources rechecked: 2026-07-04 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this on the D-5 external session before any repository publication, video upload, deck publication, Devpost rules acceptance, or final `Submit project`. It is a rehearsal sheet: it proves the local packet is internally consistent and gives the entrant exact paste targets for the public submission session.

## Current Source Facts

- Devpost overview still lists the deadline as July 9, 2026, 2:00 PM PDT.
- Devpost rules still require a project using Qwen models available on Qwen Cloud.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key setup.
- Devpost rules still require a public code repository, text description, track selection, architecture diagram, public demonstration video, Alibaba Cloud deployment proof, and working-project access for judging and testing.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- The official rules require the demo video to be less than three minutes and publicly visible.
- Public discussion topics visible on July 4, 2026 KST still show account-region, credit, security-verification, Alibaba Cloud, and non-Qwen-provider risk. Treat these as external blockers, not local packet defects.

## Rehearsal Inputs

Run these locally before opening external sites:

```bash
cd /Users/mac/hackathon-agent/biddesk-autopilot
python3 scripts/qwen-deadline-status.py --fail-after-deadline
bash scripts/submission-readiness.sh
bash scripts/prepare-qwen-submission-handoff.sh
```

Expected local evidence:

- `reports/sample-proposal-packet.md` regenerates.
- `reports/sample-proposal-packet.json` regenerates.
- `submission/qwen-source-recheck-snapshot.md` refreshes with the current deadline state.
- `submission/BidDesk-Autopilot-Qwen-handoff-bundle.zip` contains this rehearsal sheet and all first-open submission artifacts.

## Public Asset Rehearsal

| Public asset | Rehearsed local source | External value to paste later | Stop condition |
| --- | --- | --- | --- |
| Repository URL | `README.md`, `LICENSE`, `src/`, `reports/sample-request.json`, `reports/sample-proposal-packet.md` | Entrant-owned public repository URL | STOP until the entrant publishes under their identity |
| Qwen Cloud proof | `submission/qwen-live-connector-gate.md` and `--qwen-status --use-qwen` output | Redacted proof in README, docs, video, or testing notes | STOP until live Qwen Cloud run is captured |
| Alibaba Cloud proof | `submission/qwen-deployment-proof-gate.md` | Public repository code-file URL showing Alibaba Cloud service/API use | STOP until deployment proof exists |
| Working project access | `submission/qwen-judging-testing-access-gate.md` | Public website, functioning demo, or test build instructions | STOP until judges can access the project |
| Demo video | `submission/qwen-demo-script.md` and `submission/qwen-video-duration-arbitration.md` | Public YouTube, Vimeo, or Youku URL under 3 minutes | STOP until public playback works in private browser |
| Architecture diagram | `submission/qwen-architecture-diagram.md` | Public repo path, deck slide, or Devpost attachment | STOP if judges cannot view it |
| Presentation deck/PDF | `submission/qwen-presentation-deck-outline.md` | Public deck/PDF URL if Devpost asks for it | STOP if the field is required and no URL exists |
| Testing instructions | `submission/qwen-judging-testing-access-gate.md` | Ready-to-paste instructions using only synthetic data | STOP if private credentials or sensitive data would be exposed |

## Devpost Paste Rehearsal

Use these only after the public asset rehearsal above has a value or an intentional downgrade decision:

1. Title: `BidDesk Autopilot: Qwen-Powered Proposal Operations`
2. Short description: use `submission/qwen-devpost-draft.md`; keep Qwen-ready wording until live Qwen proof exists.
3. Track: Track 4 Autopilot Agent. Mention Track 3 Agent Society only as supporting evidence if the form allows it.
4. Project description: paste from `submission/qwen-devpost-draft.md`, then add only verified public URL and live-proof claims.
5. Repository URL: paste only the entrant-owned public URL.
6. Demo video URL: paste only a private-browser-verified public URL under three minutes.
7. Testing instructions: paste the working-project access path or local test build path.
8. Alibaba Cloud proof: paste the public repository code-file URL showing Alibaba Cloud service/API use.
9. Architecture diagram: attach or link the judge-visible diagram.
10. Deck/PDF/blog/social fields: fill only if the entrant intentionally published those assets.

## Claim Boundary

Use live submission wording only if all of these are true:

- Entrant has joined the Devpost hackathon.
- Entrant has a Qwen Cloud account, eligible credit or billing path, and API key stored outside the repository.
- `uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen` completed and proof is redacted.
- Alibaba Cloud backend proof exists as a public repository code-file link.
- Public repository, public video, architecture diagram, and working-project access pass private-browser verification.

If any item is missing, paste this downgrade boundary:

> This submission is a Qwen-ready local prototype with a guarded Qwen Cloud connector. Live Qwen Cloud and Alibaba Cloud deployment claims are intentionally withheld until account setup, API-key configuration, and deployment proof are complete.

## GO / DOWNGRADE / STOP

GO - D-5 public submission rehearsal ready if all local validation commands pass and each external public asset has either a verified URL slot or an explicit entrant-owned stop condition.

DOWNGRADE - D-5 prototype submission path if local artifacts are complete but live Qwen Cloud, Alibaba Cloud, public video, or public repository proof is incomplete.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, Alibaba Cloud deployment, repository publication, video upload, deck publication, rules acceptance, or final `Submit project`.
