# Qwen Final 48-Hour Public Proof Lock

Public sources rechecked: 2026-07-06 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this after `submission/qwen-final-72-hour-recording-lock.md` and before public URL paste, final Devpost field lock, rules acceptance, or final submit. At this point the remaining risk is not more copy; it is public proof drift between the repository, demo video, testing instructions, Qwen Cloud evidence, Alibaba Cloud evidence, and Devpost fields.

## Current Source Facts

- Devpost overview and official rules still show the deadline as July 9, 2026, 2:00 PM PDT.
- Public Devpost surfaces visible on July 6, 2026 KST show about 6,679 participants.
- Rules still require Qwen models available on Qwen Cloud, a public open-source repository, text description, track selection, architecture diagram, Alibaba Cloud backend deployment proof, and a public demo video.
- Alibaba Cloud deployment proof must be a public repository code-file link demonstrating Alibaba Cloud services and APIs.
- Official rules keep the stricter demo-video threshold at less than 3 minutes.
- Rules require working-project access for judging and testing through a website, functioning demo, or test build.
- Resources still list the OpenAI-compatible Qwen Cloud API base URL as `https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.
- Public discussion surfaces still expose account-credit, account-region, security-review, Alibaba deployment, and non-Qwen-provider ambiguity, so live claims must stay behind captured proof.

## 48-Hour Lock Sequence

Run this sequence in one sitting. Do not rewrite claims after this without repeating the whole sequence.

1. Deadline: run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Source snapshot: run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
3. Local proof: run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
4. Repository proof: open the public repository URL in a private/incognito browser and confirm `README.md`, `LICENSE`, source, sample request, sample output, setup commands, and Qwen truth boundary are visible.
5. Qwen proof: if entrant-owned credentials exist, capture redacted `--use-qwen` output; otherwise use only Qwen-ready prototype wording.
6. Alibaba proof: open the public repository code-file link that demonstrates Alibaba Cloud service/API usage; if it does not exist, do not claim Alibaba Cloud deployment.
7. Working-project proof: verify the public URL or clean-room test build instructions exactly as a judge would use them.
8. Video proof: open the public video URL in a private/incognito browser and confirm it is publicly viewable, less than 3 minutes, and starts with product output plus Track 4 fit.
9. Deck proof: open the public deck/PDF URL if Devpost asks for it; otherwise keep the local outline as source material only.
10. Field proof: paste only the locked values from `submission/qwen-devpost-field-lock.md` and `submission/qwen-final-devpost-value-audit.md`.

## Public URL Evidence Table

Fill this table during the external session. Leave any missing item blank and use the downgrade wording.

| Item | Public URL or local proof | Private-browser result | Claim allowed |
| --- | --- | --- | --- |
| Public repository |  |  | Public repo only if visible |
| Alibaba Cloud proof code file |  |  | Alibaba deployment only if visible |
| Qwen Cloud live proof |  |  | Live Qwen only if redacted proof captured |
| Working project or test build |  |  | Judge-accessible project only if verified |
| Public demo video |  |  | Demo video only if public and <3 minutes |
| Architecture diagram |  |  | Architecture proof only if visible |
| Deck/PDF, if requested |  |  | Deck URL only if visible |

## Final Devpost Field Freeze

Freeze these fields after the public URL evidence table is complete:

- Title: `BidDesk Autopilot: Qwen-Powered Proposal Operations`.
- Track: Track 4 Autopilot Agent; mention Track 3 Agent Society only as supporting evidence.
- Short description: use the Devpost draft unless Qwen/Alibaba proof is missing, then use prototype wording.
- Long description: include five agents, human approval gates, generated proposal packet, and only verified live proof.
- Repository URL: public entrant-owned repository only.
- Demo video URL: public less-than-3-minute URL only.
- Testing instructions: website/functioning demo/test build instructions from `submission/qwen-judging-testing-access-gate.md`.
- Alibaba proof: public repository code-file URL only.
- Qwen proof: redacted live connector proof only; otherwise say Qwen-ready prototype.
- Presentation deck/PDF: public entrant-owned URL only if the field exists.

## Paste-Ready Downgrade Lines

Use this if Qwen Cloud proof is missing:

> This submission is a Qwen-ready local prototype with a guarded OpenAI-compatible Qwen Cloud connector. Live Qwen Cloud usage is not claimed because entrant-owned API proof has not been captured.

Use this if Alibaba Cloud proof is missing:

> Alibaba Cloud deployment is not claimed in this version because the required public repository code-file proof has not been captured.

Use this if hosted working-project access is missing:

> Judges can test the project through the public repository using the README clean-room commands and synthetic sample request.

## GO / DOWNGRADE / STOP

GO - final 48-hour public proof lock ready only if every public URL opens in a private/incognito browser, the demo video is less than 3 minutes, Qwen and Alibaba claims have captured proof, and Devpost testing instructions exactly match the verified access path.

DOWNGRADE - submit truthful prototype wording if any live Qwen Cloud, Alibaba Cloud, hosted project, deck, or public proof URL is missing but the local repository and reproducible test build are ready.

STOP - external commitment required before Devpost login, `Join hackathon`, Qwen Cloud signup, voucher request, Discord join, API key creation, cloud deployment, repository publication, public video upload, deck publication, rules acceptance, or final `Submit project`.
