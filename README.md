# BidDesk Autopilot

BidDesk Autopilot is a Qwen-ready multi-agent proposal operations prototype for the Global AI Hackathon Series with Qwen Cloud.

The product turns messy RFP and customer email inputs into an approval-ready proposal packet. It coordinates intake, research, policy, quote, and approval agents, then keeps pricing, legal, delivery, and customer commitments behind human approval gates.

## Hackathon Fit

- Primary track: Track 4 Autopilot Agent.
- Secondary evidence: Track 3 Agent Society, because five specialized agents exchange structured outputs instead of acting as one generic assistant.
- Required cloud boundary: final judging submission must use Qwen models available on Qwen Cloud and provide Alibaba Cloud deployment proof.
- Truth boundary: this local prototype is deterministic until a real Qwen Cloud API key and Alibaba Cloud deployment are connected.

## Local Demo

```bash
uv sync --all-groups
uv run biddesk-autopilot reports/sample-request.json \
  --out reports/sample-proposal-packet.md \
  --json reports/sample-proposal-packet.json
```

## Public Web Demo

Judge-facing static demo: https://memekr.github.io/biddesk-autopilot/

The web demo uses only synthetic data and mirrors the sample proposal packet,
approval gates, Qwen proof boundary, and Devpost testing instructions. It is a
working-project access aid, not an Alibaba Cloud deployment claim.

Official public demo video: https://youtu.be/mEV2CP06JQo

Public demo video preview: https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4

The MP4 preview is the validated under-three-minute demo asset on GitHub Pages.
It is supplemental public evidence; use the YouTube URL above for the official
Devpost video field.

Public presentation preview: https://memekr.github.io/biddesk-autopilot/qwen-presentation.html

The presentation deck is also committed as
`submission/BidDesk-Autopilot-Qwen-presentation.pptx` for any Devpost or Qwen
presentation/PPT field. The deck keeps Alibaba Cloud deployment wording
deployment-pending until live proof exists.

To verify the Qwen Cloud connector path without making a network request:

```bash
uv run biddesk-autopilot reports/sample-request.json --qwen-status
```

After the entrant creates a Qwen Cloud/DashScope API key outside the repository, the live path is:

```bash
export QWEN_API_KEY="..."
export QWEN_BASE_URL="https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
export QWEN_MODEL="qwen-plus"
uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen
```

## Validation

```bash
python3 scripts/qwen-deadline-status.py --fail-after-deadline
bash scripts/submission-readiness.sh
bash scripts/prepare-qwen-submission-handoff.sh
```

## Submission Packet

- `submission/qwen-final-operator-index.md` is the first-open index for the final external session, ordering every proof gate before Devpost paste and submit.
- `submission/qwen-post-extension-10-day-proof-sprint.md` is the first post-extension execution sheet after the July 10 source recheck; it turns the confirmed July 20 window into a proof-first calendar.
- `submission/qwen-judge-clean-room-rehearsal.md` gives judges a no-account reproducibility path and validates the five-agent local evidence before public URL publication.
- `submission/qwen-final-public-proof-evidence-lock.md` locks the July 11 source state, about 7,500 public participants, coupon cutoff risk, and final proof order before public publication or Devpost paste.
- `submission/qwen-public-repository-publication.md` records the public GitHub repository URL, judge test-build path, secret boundary, and publication verification gate.
- `submission/qwen-live-call-evidence.md` records the July 11 live Qwen Cloud call, free-tier-only cost boundary, redacted connector status, and secret-handling proof.
- `docs/index.html` is the public static judge demo published through GitHub Pages at https://memekr.github.io/biddesk-autopilot/.
- `src/biddesk_autopilot/alibaba_function_compute.py` is the Alibaba Cloud Function Compute handler code-file candidate for deployment proof; it is not live deployment proof until the entrant completes and verifies a Function Compute deployment.
- `submission/qwen-alibaba-function-compute-proof-adapter.md` records the handler path, expected public code-file URL, source recheck, validation, and truthful Alibaba proof boundary.
- `submission/qwen-d6-submission-control-board.md` compresses the last six days into daily proof deadlines and GO/DOWNGRADE/STOP decisions.
- `submission/qwen-external-proof-packet.md` maps every external proof item to accepted evidence, redaction rules, claim boundaries, and ready testing-instruction wording.
- `submission/qwen-d5-public-submission-rehearsal.md` rehearses the public URL, Devpost paste, and downgrade decisions before any external publication or submit action.
- `submission/qwen-final-120-hour-evidence-freeze.md` freezes final public claims to captured evidence or explicit prototype fallback wording.
- `submission/qwen-final-96-hour-judge-access-drill.md` checks that judges can open public assets, run or test the project, and see only verified Qwen/Alibaba claims.
- `submission/qwen-final-devpost-value-audit.md` checks final Devpost fields for track fit, proof-to-claim alignment, judge-visible value, and the <3 minute video rule before field lock.
- `submission/qwen-final-84-hour-submit-slot.md` locks the last uninterrupted external work slot to one claim set before recording, public proof checks, or Devpost paste.
- `submission/qwen-final-72-hour-recording-lock.md` locks the first 30 seconds, runtime, proof visuals, fallback narration, and video description before public upload.
- `submission/qwen-demo-video-preupload.md` records the local MP4 render path, YouTube publication evidence, validation command, and public-video URL.
- `submission/qwen-public-pages-video-fallback.md` records the public GitHub Pages MP4 fallback and its supplemental-preview boundary beside the official YouTube URL.
- `submission/qwen-final-48-hour-public-proof-lock.md` freezes public URL evidence, Devpost fields, and Qwen/Alibaba claim boundaries before final paste or submit.
- `submission/qwen-final-external-blocker-matrix.md` lists each remaining external site, button/action, data requirement, and fallback line before account, publication, rules, or submit commitments.
- `submission/qwen-d3-final-submit-rehearsal.md` compresses the D-3 dry run into deadline check, source snapshot, public URL proof, field lock, paste rehearsal, and exact external stop lines.
- `submission/qwen-d2-external-action-lock.md` orders the final entrant-owned external actions and locks claim fallbacks before login, publication, rules acceptance, or submit.
- `submission/qwen-d1-final-submit-desk.md` gives the entrant the final one-session proof, paste, rules, and submit desk with downgrade wording for every unsupported live claim.
- `submission/qwen-final-60-hour-command-center.md` locks the July 7 evening source state, about 6,972 participants, and the highest-value proof order before recording, publication, Devpost paste, rules acceptance, or submit.
- `submission/qwen-final-36-hour-eligibility-brief.md` locks the July 8 source state, about 6,997 to 7,004 participants, and the last eligibility filter around Qwen proof, Alibaba proof, public URLs, and truthful prototype fallback wording.
- `submission/qwen-final-48-hour-submit-readiness.md` refreshes the July 8 source state, about 7,028 participants, and the final readiness order before entrant-owned Devpost, Qwen, Alibaba, repository, video, deck, or submit actions.
- `submission/qwen-final-public-proof-refresh.md` refreshes the July 17 source state, about 8,100 participants, public URL HTTP results, current prize-copy boundary, and final CAPTCHA/phone-verification stop lines.
- `submission/qwen-final-devpost-access-recheck.md` records the July 18 Chrome Devpost access check, 8,176 public participants, current reCAPTCHA draft-creation blocker, and final public proof paste boundary.
- `submission/qwen-deadline-extension-arbitration.md` captures the historical July 8 source conflict where the Devpost header showed Jul 20, 2026 while the Official Rules body still showed Jul 9, 2026.
- `submission/qwen-deadline-extension-confirmation.md` captures the current Jul 20, 2026 deadline alignment across Devpost and the Qwen challenge page while keeping the voucher/account/proof blockers visible.
- `submission/qwen-deployment-proof-gate.md` is the first proof gate before any live Qwen Cloud claim.
- `submission/qwen-live-connector-gate.md` defines the exact Qwen environment variables, live-call proof, and redaction rules.
- `submission/qwen-devpost-draft.md` contains ready-to-paste Devpost copy with a truthful local-prototype boundary.
- `submission/qwen-demo-script.md` keeps the video under the stricter Devpost rules threshold.
- `scripts/render-qwen-demo-video.sh` renders a local under-3-minute MP4 preupload asset from generated packet evidence and Playwright screenshots into ignored `output/playwright/qwen-demo-video/`.
- `submission/qwen-presentation-deck-outline.md` gives slide-by-slide source copy for the required presentation deck.
- `submission/qwen-presentation-deck.md` records the generated PPTX, public preview URL, SHA-256, validation, and Alibaba deployment truth boundary for the deck asset.
- `submission/qwen-judging-criteria-map.md` maps Devpost scoring criteria to exact local evidence and truth boundaries.
- `submission/qwen-video-duration-arbitration.md` resolves public duration conflicts by using a less-than-3-minute final demo gate.
- `submission/qwen-judging-testing-access-gate.md` defines the Devpost testing instructions, working-project access, and safe credential boundary for judges.
- `submission/qwen-final-week-execution-sheet.md` orders the final seven-day external work across cloud proof, public assets, private-browser verification, and final Devpost paste.
- `submission/qwen-final-devpost-submit-runbook.md` gives the final entrant the exact Devpost paste order, required URLs, and final stop line.
- `submission/qwen-public-url-smoke-test.md` checks public repository, video, deck, working-project, Qwen proof, and Alibaba proof URLs in a private browser before final submit.
- `submission/qwen-public-asset-ledger.md` gives the final entrant one fill-in ledger for repository, video, Alibaba proof, Qwen proof, working-project, deck, credentials, and rules/submit stop lines.
- `submission/qwen-devpost-field-lock.md` maps every final Devpost field to its source artifact, required public proof, and GO/DOWNGRADE/STOP decision.
- `submission/qwen-recording-evidence-capture.md` gives the final recorder the exact demo-video and Alibaba Cloud proof capture plan, redaction rules, and claim boundaries.
- `submission/qwen-account-risk-triage.md` captures late account, credit, region, API-key, and provider-origin blockers before any live Qwen or Alibaba claim is recorded.
- `submission/qwen-source-recheck-snapshot.md` is regenerated during readiness with current public source facts, deadline conversions, and the external stop line.
- `submission/BidDesk-Autopilot-Qwen-handoff-bundle.zip` packages the local handoff files after validation.

## External Blockers

- Devpost project creation and final submit still require human image CAPTCHA completion.
- Qwen Cloud voucher request and Discord join. Account creation, free-tier activation, API key creation, and live local inference are complete.
- Alibaba Cloud deployment proof for the backend. The repository now contains a Function Compute handler code-file candidate at https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py, but live deployment proof remains pending.
- Public repository URL: https://github.com/memekr/biddesk-autopilot
- Judge-accessible working project path is the public static demo at https://memekr.github.io/biddesk-autopilot/ plus the reproducible local test build in the public README until an Alibaba Cloud endpoint exists.
- Public presentation preview is available on GitHub Pages and the PPTX is committed in `submission/`.
- Official public demo video is published at https://youtu.be/mEV2CP06JQo; final Devpost project creation/submission remains external because Devpost still stops at reCAPTCHA.
