#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUNDLE_DIR="$ROOT/submission/qwen-handoff-bundle"
ZIP_PATH="$ROOT/submission/BidDesk-Autopilot-Qwen-handoff-bundle.zip"

cd "$ROOT"

bash scripts/submission-readiness.sh

rm -rf "$BUNDLE_DIR"
mkdir -p "$BUNDLE_DIR"

cp README.md "$BUNDLE_DIR/README.md"
mkdir -p "$BUNDLE_DIR/docs"
cp docs/index.html "$BUNDLE_DIR/docs/index.html"
cp docs/.nojekyll "$BUNDLE_DIR/docs/.nojekyll"
cp LICENSE "$BUNDLE_DIR/LICENSE"
cp reports/sample-request.json "$BUNDLE_DIR/sample-request.json"
cp reports/sample-proposal-packet.md "$BUNDLE_DIR/sample-proposal-packet.md"
cp reports/sample-proposal-packet.json "$BUNDLE_DIR/sample-proposal-packet.json"
cp submission/qwen-devpost-draft.md "$BUNDLE_DIR/qwen-devpost-draft.md"
cp submission/qwen-architecture-diagram.md "$BUNDLE_DIR/qwen-architecture-diagram.md"
cp submission/qwen-demo-script.md "$BUNDLE_DIR/qwen-demo-script.md"
cp submission/qwen-deployment-proof-gate.md "$BUNDLE_DIR/qwen-deployment-proof-gate.md"
cp submission/qwen-live-connector-gate.md "$BUNDLE_DIR/qwen-live-connector-gate.md"
cp submission/qwen-presentation-deck-outline.md "$BUNDLE_DIR/qwen-presentation-deck-outline.md"
cp submission/qwen-judging-criteria-map.md "$BUNDLE_DIR/qwen-judging-criteria-map.md"
cp submission/qwen-video-duration-arbitration.md "$BUNDLE_DIR/qwen-video-duration-arbitration.md"
cp submission/qwen-judging-testing-access-gate.md "$BUNDLE_DIR/qwen-judging-testing-access-gate.md"
cp submission/qwen-final-week-execution-sheet.md "$BUNDLE_DIR/qwen-final-week-execution-sheet.md"
cp submission/qwen-final-devpost-submit-runbook.md "$BUNDLE_DIR/qwen-final-devpost-submit-runbook.md"
cp submission/qwen-public-url-smoke-test.md "$BUNDLE_DIR/qwen-public-url-smoke-test.md"
cp submission/qwen-public-asset-ledger.md "$BUNDLE_DIR/qwen-public-asset-ledger.md"
cp submission/qwen-devpost-field-lock.md "$BUNDLE_DIR/qwen-devpost-field-lock.md"
cp submission/qwen-recording-evidence-capture.md "$BUNDLE_DIR/qwen-recording-evidence-capture.md"
cp submission/qwen-account-risk-triage.md "$BUNDLE_DIR/qwen-account-risk-triage.md"
cp submission/qwen-final-operator-index.md "$BUNDLE_DIR/qwen-final-operator-index.md"
cp submission/qwen-post-extension-10-day-proof-sprint.md "$BUNDLE_DIR/qwen-post-extension-10-day-proof-sprint.md"
cp submission/qwen-judge-clean-room-rehearsal.md "$BUNDLE_DIR/qwen-judge-clean-room-rehearsal.md"
cp submission/qwen-final-public-proof-evidence-lock.md "$BUNDLE_DIR/qwen-final-public-proof-evidence-lock.md"
cp submission/qwen-public-repository-publication.md "$BUNDLE_DIR/qwen-public-repository-publication.md"
cp submission/qwen-live-call-evidence.md "$BUNDLE_DIR/qwen-live-call-evidence.md"
cp submission/qwen-d6-submission-control-board.md "$BUNDLE_DIR/qwen-d6-submission-control-board.md"
cp submission/qwen-external-proof-packet.md "$BUNDLE_DIR/qwen-external-proof-packet.md"
cp submission/qwen-d5-public-submission-rehearsal.md "$BUNDLE_DIR/qwen-d5-public-submission-rehearsal.md"
cp submission/qwen-final-120-hour-evidence-freeze.md "$BUNDLE_DIR/qwen-final-120-hour-evidence-freeze.md"
cp submission/qwen-final-96-hour-judge-access-drill.md "$BUNDLE_DIR/qwen-final-96-hour-judge-access-drill.md"
cp submission/qwen-final-devpost-value-audit.md "$BUNDLE_DIR/qwen-final-devpost-value-audit.md"
cp submission/qwen-final-84-hour-submit-slot.md "$BUNDLE_DIR/qwen-final-84-hour-submit-slot.md"
cp submission/qwen-final-72-hour-recording-lock.md "$BUNDLE_DIR/qwen-final-72-hour-recording-lock.md"
cp submission/qwen-final-48-hour-public-proof-lock.md "$BUNDLE_DIR/qwen-final-48-hour-public-proof-lock.md"
cp submission/qwen-final-external-blocker-matrix.md "$BUNDLE_DIR/qwen-final-external-blocker-matrix.md"
cp submission/qwen-d3-final-submit-rehearsal.md "$BUNDLE_DIR/qwen-d3-final-submit-rehearsal.md"
cp submission/qwen-d2-external-action-lock.md "$BUNDLE_DIR/qwen-d2-external-action-lock.md"
cp submission/qwen-d1-final-submit-desk.md "$BUNDLE_DIR/qwen-d1-final-submit-desk.md"
cp submission/qwen-final-60-hour-command-center.md "$BUNDLE_DIR/qwen-final-60-hour-command-center.md"
cp submission/qwen-final-36-hour-eligibility-brief.md "$BUNDLE_DIR/qwen-final-36-hour-eligibility-brief.md"
cp submission/qwen-final-48-hour-submit-readiness.md "$BUNDLE_DIR/qwen-final-48-hour-submit-readiness.md"
cp submission/qwen-deadline-extension-arbitration.md "$BUNDLE_DIR/qwen-deadline-extension-arbitration.md"
cp submission/qwen-deadline-extension-confirmation.md "$BUNDLE_DIR/qwen-deadline-extension-confirmation.md"
cp submission/qwen-source-recheck-snapshot.md "$BUNDLE_DIR/qwen-source-recheck-snapshot.md"
cp submission/qwen-ready-checklist.md "$BUNDLE_DIR/qwen-ready-checklist.md"
cp submission/qwen-external-handoff-checklist.md "$BUNDLE_DIR/qwen-external-handoff-checklist.md"
mkdir -p "$BUNDLE_DIR/scripts"
cp scripts/qwen-deadline-status.py "$BUNDLE_DIR/scripts/qwen-deadline-status.py"
cp scripts/write-qwen-source-recheck-snapshot.py "$BUNDLE_DIR/scripts/write-qwen-source-recheck-snapshot.py"
cp scripts/write-qwen-judge-clean-room-rehearsal.py "$BUNDLE_DIR/scripts/write-qwen-judge-clean-room-rehearsal.py"

(
  cd "$BUNDLE_DIR"
  find . -type f ! -name 'manifest-sha256.txt' -print0 \
    | sort -z \
    | xargs -0 shasum -a 256 > manifest-sha256.txt
)

rm -f "$ZIP_PATH"
(
  cd "$ROOT/submission"
  zip -qr "$ZIP_PATH" qwen-handoff-bundle
)

echo "BidDesk Autopilot Qwen handoff bundle: READY"
echo "$ZIP_PATH"
