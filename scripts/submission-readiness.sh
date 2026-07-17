#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

QWEN_ARGS=()
if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
  QWEN_ARGS=(--qwen-status --use-qwen)
fi

uv run biddesk-autopilot reports/sample-request.json \
  --out reports/sample-proposal-packet.md \
  --json reports/sample-proposal-packet.json \
  "${QWEN_ARGS[@]}"

python3 scripts/write-qwen-source-recheck-snapshot.py
python3 scripts/write-qwen-judge-clean-room-rehearsal.py
python3 scripts/qwen-deadline-status.py --fail-after-deadline
uv run pytest
uv run ruff check .
uv run ty check src tests

test -f README.md
test -f docs/index.html
test -f docs/.nojekyll
test -f docs/qwen-presentation.html
test -f docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4
test -f LICENSE
test -f submission/qwen-devpost-draft.md
test -f submission/qwen-architecture-diagram.md
test -f submission/qwen-deployment-proof-gate.md
test -f submission/qwen-live-connector-gate.md
test -f submission/qwen-presentation-deck-outline.md
test -f submission/qwen-presentation-deck.md
test -f submission/BidDesk-Autopilot-Qwen-presentation.pptx
test -f submission/qwen-judging-criteria-map.md
test -f submission/qwen-video-duration-arbitration.md
test -f submission/qwen-judging-testing-access-gate.md
test -f submission/qwen-final-week-execution-sheet.md
test -f submission/qwen-final-devpost-submit-runbook.md
test -f submission/qwen-public-url-smoke-test.md
test -f submission/qwen-public-asset-ledger.md
test -f submission/qwen-devpost-field-lock.md
test -f submission/qwen-recording-evidence-capture.md
test -f submission/qwen-account-risk-triage.md
test -f submission/qwen-final-operator-index.md
test -f submission/qwen-post-extension-10-day-proof-sprint.md
test -f submission/qwen-judge-clean-room-rehearsal.md
test -f submission/qwen-final-public-proof-evidence-lock.md
test -f submission/qwen-public-repository-publication.md
test -f submission/qwen-live-call-evidence.md
test -f submission/qwen-alibaba-function-compute-proof-adapter.md
test -f submission/qwen-d6-submission-control-board.md
test -f submission/qwen-external-proof-packet.md
test -f submission/qwen-d5-public-submission-rehearsal.md
test -f submission/qwen-final-120-hour-evidence-freeze.md
test -f submission/qwen-final-96-hour-judge-access-drill.md
test -f submission/qwen-final-devpost-value-audit.md
test -f submission/qwen-final-84-hour-submit-slot.md
test -f submission/qwen-final-72-hour-recording-lock.md
test -f submission/qwen-demo-video-preupload.md
test -f submission/qwen-public-pages-video-fallback.md
test -f submission/qwen-final-48-hour-public-proof-lock.md
test -f submission/qwen-final-external-blocker-matrix.md
test -f submission/qwen-d3-final-submit-rehearsal.md
test -f submission/qwen-d2-external-action-lock.md
test -f submission/qwen-d1-final-submit-desk.md
test -f submission/qwen-final-60-hour-command-center.md
test -f submission/qwen-final-36-hour-eligibility-brief.md
test -f submission/qwen-final-48-hour-submit-readiness.md
test -f submission/qwen-final-public-proof-refresh.md
test -f submission/qwen-deadline-extension-arbitration.md
test -f submission/qwen-deadline-extension-confirmation.md
test -f submission/qwen-source-recheck-snapshot.md
test -f submission/qwen-ready-checklist.md
test -f reports/sample-proposal-packet.md
test -f reports/sample-proposal-packet.json
test -f scripts/write-qwen-judge-clean-room-rehearsal.py
test -x scripts/render-qwen-demo-video.sh
test -f src/biddesk_autopilot/alibaba_function_compute.py

grep -q "Qwen Cloud" README.md
grep -q "https://memekr.github.io/biddesk-autopilot/" README.md
grep -q "https://memekr.github.io/biddesk-autopilot/qwen-presentation.html" README.md
grep -q "BidDesk Autopilot Demo" docs/index.html
grep -q "qwen-presentation.html" docs/index.html
grep -q "BidDesk Autopilot Qwen Presentation" docs/qwen-presentation.html
grep -q "Open PPTX" docs/qwen-presentation.html
grep -q "assets/biddesk-autopilot-qwen-demo-preupload.mp4" docs/index.html
grep -q "Alibaba Cloud deployment proof is still pending" docs/index.html
grep -q "https://memekr.github.io/biddesk-autopilot/" docs/index.html
grep -q "https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4" README.md
if [[ -f .env ]]; then
  grep -q "Qwen Cloud Live Summary" reports/sample-proposal-packet.md
  grep -q '"qwen_cloud_live_summary"' reports/sample-proposal-packet.json
fi
grep -q "July 21, 2026, 6:00 AM KST" submission/qwen-deployment-proof-gate.md
grep -q "GO - submit live Qwen entry" submission/qwen-deployment-proof-gate.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-deployment-proof-gate.md
grep -q "Qwen connector: configured" submission/qwen-live-connector-gate.md
grep -q "GO - claim live Qwen Cloud inference" submission/qwen-live-connector-gate.md
grep -q "STOP - never publish" submission/qwen-live-connector-gate.md
grep -q "Slide 4 - Qwen Cloud Architecture" submission/qwen-presentation-deck-outline.md
grep -q "GO - include live Qwen Cloud" submission/qwen-presentation-deck-outline.md
grep -q "STOP - external commitment required" submission/qwen-presentation-deck-outline.md
grep -q "Qwen Presentation Deck Asset" submission/qwen-presentation-deck.md
grep -q "BidDesk-Autopilot-Qwen-presentation.pptx" submission/qwen-presentation-deck.md
grep -q "92ab617c0ba79597b2d1ea9edfa0665c609fbedda5b123b8238a810e2efe4e43" submission/qwen-presentation-deck.md
grep -q "STOP - do not use the deck to claim live Alibaba Cloud deployment" submission/qwen-presentation-deck.md
grep -q "Technical Depth & Engineering" submission/qwen-judging-criteria-map.md
grep -q "GO - use full judging copy" submission/qwen-judging-criteria-map.md
grep -q "DOWNGRADE - use prototype judging copy" submission/qwen-judging-criteria-map.md
grep -q "STOP - external commitment required" submission/qwen-judging-criteria-map.md
grep -q "less than 3 minutes" submission/qwen-video-duration-arbitration.md
grep -q "GO - upload the demo video" submission/qwen-video-duration-arbitration.md
grep -q "DOWNGRADE - record the local prototype path" submission/qwen-video-duration-arbitration.md
grep -q "STOP - external commitment required" submission/qwen-video-duration-arbitration.md
grep -q "working project for judging and testing" submission/qwen-judging-testing-access-gate.md
grep -q "https://memekr.github.io/biddesk-autopilot/" submission/qwen-judging-testing-access-gate.md
grep -q "GO - provide working project access" submission/qwen-judging-testing-access-gate.md
grep -q "DOWNGRADE - provide local test build instructions" submission/qwen-judging-testing-access-gate.md
grep -q "STOP - external commitment required" submission/qwen-judging-testing-access-gate.md
grep -q "Qwen Final Week Execution Sheet" submission/qwen-final-week-execution-sheet.md
grep -q "GO - final week live submission path" submission/qwen-final-week-execution-sheet.md
grep -q "DOWNGRADE - final week prototype path" submission/qwen-final-week-execution-sheet.md
grep -q "STOP - external commitment required" submission/qwen-final-week-execution-sheet.md
grep -q "Qwen Final Devpost Submit Runbook" submission/qwen-final-devpost-submit-runbook.md
grep -q "GO - final Devpost submit" submission/qwen-final-devpost-submit-runbook.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-final-devpost-submit-runbook.md
grep -q "STOP - external commitment required" submission/qwen-final-devpost-submit-runbook.md
grep -q "Qwen Public URL Smoke Test" submission/qwen-public-url-smoke-test.md
grep -q "https://memekr.github.io/biddesk-autopilot/" submission/qwen-public-url-smoke-test.md
grep -q "private/incognito browser" submission/qwen-public-url-smoke-test.md
grep -q "GO - public URLs ready" submission/qwen-public-url-smoke-test.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-public-url-smoke-test.md
grep -q "STOP - external commitment required" submission/qwen-public-url-smoke-test.md
grep -q "Qwen Public Asset Ledger" submission/qwen-public-asset-ledger.md
grep -q "https://memekr.github.io/biddesk-autopilot/" submission/qwen-public-asset-ledger.md
grep -q "GO - public asset ledger ready" submission/qwen-public-asset-ledger.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-public-asset-ledger.md
grep -q "STOP - external commitment required" submission/qwen-public-asset-ledger.md
grep -q "Qwen Devpost Field Lock" submission/qwen-devpost-field-lock.md
grep -q "GO - field lock ready" submission/qwen-devpost-field-lock.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-devpost-field-lock.md
grep -q "STOP - external commitment required" submission/qwen-devpost-field-lock.md
grep -q "Qwen Recording Evidence Capture Sheet" submission/qwen-recording-evidence-capture.md
grep -q "GO - recording evidence ready" submission/qwen-recording-evidence-capture.md
grep -q "DOWNGRADE - record prototype-only video" submission/qwen-recording-evidence-capture.md
grep -q "STOP - external commitment required" submission/qwen-recording-evidence-capture.md
grep -q "Qwen Account Risk Triage" submission/qwen-account-risk-triage.md
grep -q "GO - account proof ready" submission/qwen-account-risk-triage.md
grep -q "DOWNGRADE - use Qwen-ready local prototype wording" submission/qwen-account-risk-triage.md
grep -q "STOP - external commitment required" submission/qwen-account-risk-triage.md
grep -q "Qwen Final Operator Index" submission/qwen-final-operator-index.md
grep -q "GO - final live Qwen submission" submission/qwen-final-operator-index.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-final-operator-index.md
grep -q "STOP - external commitment required" submission/qwen-final-operator-index.md
grep -q "Qwen Post-Extension 10-Day Proof Sprint" submission/qwen-post-extension-10-day-proof-sprint.md
grep -q "July 20, 2026, 2:00 PM PDT" submission/qwen-post-extension-10-day-proof-sprint.md
grep -q "GO - continue toward a live Qwen submission" submission/qwen-post-extension-10-day-proof-sprint.md
grep -q "DOWNGRADE - use truthful Qwen-ready prototype wording" submission/qwen-post-extension-10-day-proof-sprint.md
grep -q "STOP - external commitment required" submission/qwen-post-extension-10-day-proof-sprint.md
grep -q "Qwen Judge Clean-Room Rehearsal" submission/qwen-judge-clean-room-rehearsal.md
grep -q "Five-agent workflow" submission/qwen-judge-clean-room-rehearsal.md
grep -q "Testing instructions fallback" submission/qwen-judge-clean-room-rehearsal.md
grep -q "GO - use this rehearsal as judge testing evidence" submission/qwen-judge-clean-room-rehearsal.md
grep -q "DOWNGRADE - keep Qwen-ready prototype wording" submission/qwen-judge-clean-room-rehearsal.md
grep -q "STOP - external commitment required" submission/qwen-judge-clean-room-rehearsal.md
grep -q "Qwen Final Public Proof Evidence Lock" submission/qwen-final-public-proof-evidence-lock.md
grep -q "about 7,500 participants" submission/qwen-final-public-proof-evidence-lock.md
grep -q "coupon redemption remained July 9 at 11:59 PM GMT+7" submission/qwen-final-public-proof-evidence-lock.md
grep -q "GO - continue with live Qwen submission" submission/qwen-final-public-proof-evidence-lock.md
grep -q "DOWNGRADE - use truthful Qwen-ready prototype wording" submission/qwen-final-public-proof-evidence-lock.md
grep -q "STOP - external commitment required" submission/qwen-final-public-proof-evidence-lock.md
grep -q "Qwen Public Repository Publication" submission/qwen-public-repository-publication.md
grep -q "https://github.com/memekr/biddesk-autopilot" submission/qwen-public-repository-publication.md
grep -q "https://memekr.github.io/biddesk-autopilot/" submission/qwen-public-repository-publication.md
grep -q "GO - use the public repository URL" submission/qwen-public-repository-publication.md
grep -q "DOWNGRADE - use the judge test-build path" submission/qwen-public-repository-publication.md
grep -q "STOP - do not claim Alibaba Cloud deployment" submission/qwen-public-repository-publication.md
grep -q "Qwen Cloud Live Call Evidence" submission/qwen-live-call-evidence.md
grep -q "Qwen connector: configured" submission/qwen-live-call-evidence.md
grep -q "GO - claim live Qwen Cloud inference" submission/qwen-live-call-evidence.md
grep -q "STOP - do not expose" submission/qwen-live-call-evidence.md
grep -q "Qwen Alibaba Function Compute Proof Adapter" submission/qwen-alibaba-function-compute-proof-adapter.md
grep -q "src/biddesk_autopilot/alibaba_function_compute.py" submission/qwen-alibaba-function-compute-proof-adapter.md
grep -q "GO - use the code-file URL" submission/qwen-alibaba-function-compute-proof-adapter.md
grep -q "DOWNGRADE - submit prototype wording" submission/qwen-alibaba-function-compute-proof-adapter.md
grep -q "STOP - external commitment required" submission/qwen-alibaba-function-compute-proof-adapter.md
grep -q "Qwen D-6 Submission Control Board" submission/qwen-d6-submission-control-board.md
grep -q "2026-07-04 KST" submission/qwen-d6-submission-control-board.md
grep -q "GO - D-6 live submission path" submission/qwen-d6-submission-control-board.md
grep -q "DOWNGRADE - D-6 prototype submission path" submission/qwen-d6-submission-control-board.md
grep -q "STOP - external commitment required" submission/qwen-d6-submission-control-board.md
grep -q "Qwen External Proof Packet" submission/qwen-external-proof-packet.md
grep -q "2026-07-04 KST" submission/qwen-external-proof-packet.md
grep -q "GO - external proof packet ready" submission/qwen-external-proof-packet.md
grep -q "DOWNGRADE - external proof packet prototype path" submission/qwen-external-proof-packet.md
grep -q "STOP - external commitment required" submission/qwen-external-proof-packet.md
grep -q "Qwen D-5 Public Submission Rehearsal" submission/qwen-d5-public-submission-rehearsal.md
grep -q "2026-07-04 KST" submission/qwen-d5-public-submission-rehearsal.md
grep -q "GO - D-5 public submission rehearsal ready" submission/qwen-d5-public-submission-rehearsal.md
grep -q "DOWNGRADE - D-5 prototype submission path" submission/qwen-d5-public-submission-rehearsal.md
grep -q "STOP - external commitment required" submission/qwen-d5-public-submission-rehearsal.md
grep -q "Qwen Final 120-Hour Evidence Freeze" submission/qwen-final-120-hour-evidence-freeze.md
grep -q "2026-07-04 KST" submission/qwen-final-120-hour-evidence-freeze.md
grep -q "GO - final 120-hour evidence freeze ready" submission/qwen-final-120-hour-evidence-freeze.md
grep -q "DOWNGRADE - freeze prototype wording" submission/qwen-final-120-hour-evidence-freeze.md
grep -q "STOP - external commitment required" submission/qwen-final-120-hour-evidence-freeze.md
grep -q "Qwen Final 96-Hour Judge Access Drill" submission/qwen-final-96-hour-judge-access-drill.md
grep -q "2026-07-05 KST" submission/qwen-final-96-hour-judge-access-drill.md
grep -q "GO - final 96-hour judge access drill ready" submission/qwen-final-96-hour-judge-access-drill.md
grep -q "DOWNGRADE - use judge-accessible prototype wording" submission/qwen-final-96-hour-judge-access-drill.md
grep -q "STOP - external commitment required" submission/qwen-final-96-hour-judge-access-drill.md
grep -q "Qwen Final Devpost Value Audit" submission/qwen-final-devpost-value-audit.md
grep -q "more than 6,600 participants" submission/qwen-final-devpost-value-audit.md
grep -q "GO - final Devpost value audit ready" submission/qwen-final-devpost-value-audit.md
grep -q "DOWNGRADE - use prototype value wording" submission/qwen-final-devpost-value-audit.md
grep -q "STOP - external commitment required" submission/qwen-final-devpost-value-audit.md
grep -q "Qwen Final 84-Hour Submit Slot" submission/qwen-final-84-hour-submit-slot.md
grep -q "2026-07-06 KST" submission/qwen-final-84-hour-submit-slot.md
grep -q "about 6,708 participants" submission/qwen-final-84-hour-submit-slot.md
grep -q "GO - final 84-hour submit slot ready" submission/qwen-final-84-hour-submit-slot.md
grep -q "DOWNGRADE - use Qwen-ready prototype wording" submission/qwen-final-84-hour-submit-slot.md
grep -q "STOP - external commitment required" submission/qwen-final-84-hour-submit-slot.md
grep -q "Qwen Final 72-Hour Recording Lock" submission/qwen-final-72-hour-recording-lock.md
grep -q "2026-07-05 KST" submission/qwen-final-72-hour-recording-lock.md
grep -q "GO - final 72-hour recording lock ready" submission/qwen-final-72-hour-recording-lock.md
grep -q "DOWNGRADE - record the Qwen-ready prototype path" submission/qwen-final-72-hour-recording-lock.md
grep -q "STOP - external commitment required" submission/qwen-final-72-hour-recording-lock.md
grep -q "Qwen Demo Video Preupload Packet" submission/qwen-demo-video-preupload.md
grep -q "scripts/render-qwen-demo-video.sh" submission/qwen-demo-video-preupload.md
grep -q "https://youtu.be/mEV2CP06JQo" submission/qwen-demo-video-preupload.md
grep -q "GO - use https://youtu.be/mEV2CP06JQo as the official Devpost demo video URL" submission/qwen-demo-video-preupload.md
grep -q "DOWNGRADE - use prototype-only Devpost wording if Alibaba Cloud deployment proof remains missing" submission/qwen-demo-video-preupload.md
grep -q "STOP - external commitment required" submission/qwen-demo-video-preupload.md
grep -q "Qwen Public Pages Video Fallback" submission/qwen-public-pages-video-fallback.md
grep -q "https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4" submission/qwen-public-pages-video-fallback.md
grep -q "https://youtu.be/mEV2CP06JQo" submission/qwen-public-pages-video-fallback.md
grep -q "GO - use https://youtu.be/mEV2CP06JQo as the official Devpost video URL" submission/qwen-public-pages-video-fallback.md
grep -q "DOWNGRADE - keep final Devpost wording truthful if the YouTube URL becomes unavailable" submission/qwen-public-pages-video-fallback.md
grep -q "STOP - external commitment required" submission/qwen-public-pages-video-fallback.md
grep -q "Qwen Final 48-Hour Public Proof Lock" submission/qwen-final-48-hour-public-proof-lock.md
grep -q "2026-07-06 KST" submission/qwen-final-48-hour-public-proof-lock.md
grep -q "GO - final 48-hour public proof lock ready" submission/qwen-final-48-hour-public-proof-lock.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-final-48-hour-public-proof-lock.md
grep -q "STOP - external commitment required" submission/qwen-final-48-hour-public-proof-lock.md
grep -q "Qwen Final External Blocker Matrix" submission/qwen-final-external-blocker-matrix.md
grep -q "about 7,883 participants" submission/qwen-final-external-blocker-matrix.md
grep -q "Devpost enrollment" submission/qwen-final-external-blocker-matrix.md
grep -q "GO - final external blockers cleared" submission/qwen-final-external-blocker-matrix.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-final-external-blocker-matrix.md
grep -q "STOP - external commitment required" submission/qwen-final-external-blocker-matrix.md
grep -q "Qwen D-3 Final Submit Rehearsal" submission/qwen-d3-final-submit-rehearsal.md
grep -q "about 6,773 participants" submission/qwen-d3-final-submit-rehearsal.md
grep -q "One-Session Dry Run" submission/qwen-d3-final-submit-rehearsal.md
grep -q "GO - D-3 final submit rehearsal ready" submission/qwen-d3-final-submit-rehearsal.md
grep -q "DOWNGRADE - D-3 truthful prototype path" submission/qwen-d3-final-submit-rehearsal.md
grep -q "STOP - external commitment required" submission/qwen-d3-final-submit-rehearsal.md
grep -q "Qwen D-2 External Action Lock" submission/qwen-d2-external-action-lock.md
grep -q "about 6,836 participants" submission/qwen-d2-external-action-lock.md
grep -q "D-2 External Action Order" submission/qwen-d2-external-action-lock.md
grep -q "GO - D-2 external action lock ready" submission/qwen-d2-external-action-lock.md
grep -q "DOWNGRADE - D-2 truthful prototype path" submission/qwen-d2-external-action-lock.md
grep -q "STOP - external commitment required" submission/qwen-d2-external-action-lock.md
grep -q "Qwen D-1 Final Submit Desk" submission/qwen-d1-final-submit-desk.md
grep -q "about 6,891 participants" submission/qwen-d1-final-submit-desk.md
grep -q "Final Desk Sequence" submission/qwen-d1-final-submit-desk.md
grep -q "GO - D-1 final submit desk ready" submission/qwen-d1-final-submit-desk.md
grep -q "DOWNGRADE - D-1 truthful prototype path" submission/qwen-d1-final-submit-desk.md
grep -q "STOP - external commitment required" submission/qwen-d1-final-submit-desk.md
grep -q "Qwen Final 60-Hour Command Center" submission/qwen-final-60-hour-command-center.md
grep -q "about 6,972 participants" submission/qwen-final-60-hour-command-center.md
grep -q "60-Hour Priority Order" submission/qwen-final-60-hour-command-center.md
grep -q "GO - final 60-hour command center ready" submission/qwen-final-60-hour-command-center.md
grep -q "DOWNGRADE - final 60-hour truthful prototype path" submission/qwen-final-60-hour-command-center.md
grep -q "STOP - external commitment required" submission/qwen-final-60-hour-command-center.md
grep -q "Qwen Final 36-Hour Eligibility Brief" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "about 6,997 to 7,004 participants" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "No proof = not eligible" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "GO - final 36-hour eligibility brief ready" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "DOWNGRADE - final 36-hour truthful prototype path" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "STOP - external commitment required" submission/qwen-final-36-hour-eligibility-brief.md
grep -q "Qwen Final 48-Hour Submit Readiness" submission/qwen-final-48-hour-submit-readiness.md
grep -q "about 7,028 participants" submission/qwen-final-48-hour-submit-readiness.md
grep -q "48-Hour Submit Order" submission/qwen-final-48-hour-submit-readiness.md
grep -q "GO - final 48-hour submit readiness ready" submission/qwen-final-48-hour-submit-readiness.md
grep -q "DOWNGRADE - final 48-hour truthful prototype path" submission/qwen-final-48-hour-submit-readiness.md
grep -q "STOP - external commitment required" submission/qwen-final-48-hour-submit-readiness.md
grep -q "Qwen Final Public Proof Refresh" submission/qwen-final-public-proof-refresh.md
grep -q "about 8,100 participants" submission/qwen-final-public-proof-refresh.md
grep -q "GO - continue toward final Qwen submission" submission/qwen-final-public-proof-refresh.md
grep -q "DOWNGRADE - submit truthful prototype wording" submission/qwen-final-public-proof-refresh.md
grep -q "STOP - external commitment required" submission/qwen-final-public-proof-refresh.md
grep -q "Qwen Deadline Extension Arbitration" submission/qwen-deadline-extension-arbitration.md
grep -q "July 20, 2026, 2:00 PM PDT" submission/qwen-deadline-extension-arbitration.md
grep -q "July 9, 2026, 2:00 PM Pacific Time" submission/qwen-deadline-extension-arbitration.md
grep -q "GO - use the visible July 20 platform window" submission/qwen-deadline-extension-arbitration.md
grep -q "DOWNGRADE - use conservative prototype wording" submission/qwen-deadline-extension-arbitration.md
grep -q 'STOP - external commitment required' submission/qwen-deadline-extension-arbitration.md
grep -q "Qwen Deadline Extension Confirmation" submission/qwen-deadline-extension-confirmation.md
grep -q "Devpost Official Rules section 1 now lists" submission/qwen-deadline-extension-confirmation.md
grep -q "Qwen Cloud challenge page key dates now show" submission/qwen-deadline-extension-confirmation.md
grep -q "GO - confirmed Devpost extension path" submission/qwen-deadline-extension-confirmation.md
grep -q "DOWNGRADE - use truthful Qwen-ready prototype wording" submission/qwen-deadline-extension-confirmation.md
grep -q "STOP - external commitment required" submission/qwen-deadline-extension-confirmation.md
grep -q "Qwen Source Recheck Snapshot" submission/qwen-source-recheck-snapshot.md
grep -q "about 8,100 participants" submission/qwen-source-recheck-snapshot.md
grep -q "Devpost deadline alignment reconfirmed" submission/qwen-source-recheck-snapshot.md
grep -q "less than 3 minutes" submission/qwen-source-recheck-snapshot.md
grep -q "BidDesk-Autopilot-Qwen-presentation.pptx" submission/qwen-source-recheck-snapshot.md
grep -q "GO - continue live Qwen submission" submission/qwen-source-recheck-snapshot.md
grep -q "DOWNGRADE - use Qwen-ready local prototype wording" submission/qwen-source-recheck-snapshot.md
grep -q "STOP - external commitment required" submission/qwen-source-recheck-snapshot.md
grep -q "Alibaba Cloud deployment proof" submission/qwen-ready-checklist.md
grep -q "STOP - external commitment required" submission/qwen-ready-checklist.md

echo "BidDesk Autopilot Qwen packet: READY"
