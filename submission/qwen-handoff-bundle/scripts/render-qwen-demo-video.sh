#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${1:-$ROOT/output/playwright/qwen-demo-video}"
WORK_DIR="$OUT_DIR/work"
SLIDE_DIR="$WORK_DIR/slides"
FRAME_DIR="$WORK_DIR/frames"
VOICEOVER="$OUT_DIR/voiceover.txt"
AUDIO="$WORK_DIR/voiceover.aiff"
BASE_VIDEO="$WORK_DIR/slides-only.mp4"
VIDEO="$OUT_DIR/biddesk-autopilot-qwen-demo-preupload.mp4"
PROBE="$OUT_DIR/ffprobe.json"
SHA="$OUT_DIR/sha256.txt"

if ! command -v npx >/dev/null 2>&1; then
  echo "npx is required for Playwright screenshots." >&2
  exit 1
fi
if ! command -v ffmpeg >/dev/null 2>&1 || ! command -v ffprobe >/dev/null 2>&1; then
  echo "ffmpeg and ffprobe are required to render and validate the video." >&2
  exit 1
fi
if ! command -v node >/dev/null 2>&1 || ! command -v uv >/dev/null 2>&1; then
  echo "node and uv are required to generate slide content from the local packet." >&2
  exit 1
fi

cd "$ROOT"
rm -rf "$WORK_DIR"
mkdir -p "$SLIDE_DIR" "$FRAME_DIR"

QWEN_ARGS=(--qwen-status)
if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
  QWEN_ARGS+=(--use-qwen)
fi

uv run biddesk-autopilot reports/sample-request.json \
  --out reports/sample-proposal-packet.md \
  --json reports/sample-proposal-packet.json \
  "${QWEN_ARGS[@]}"

node - "$ROOT" "$SLIDE_DIR" "$OUT_DIR" <<'NODE'
const fs = require("fs");
const path = require("path");

const [root, slideDir, outDir] = process.argv.slice(2);
const packet = JSON.parse(fs.readFileSync(path.join(root, "reports/sample-proposal-packet.json"), "utf8"));
const request = JSON.parse(fs.readFileSync(path.join(root, "reports/sample-request.json"), "utf8"));
const liveEvidencePath = path.join(root, "submission/qwen-live-call-evidence.md");
const hasLiveEvidence = fs.existsSync(liveEvidencePath);
const hasLiveSummary = Boolean(packet.qwen_cloud_live_summary);

function escapeHtml(value) {
  return String(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#39;");
}

function bullets(values) {
  return values.map((value) => `<li>${escapeHtml(value)}</li>`).join("");
}

function codeBlock(value) {
  return `<pre>${escapeHtml(value)}</pre>`;
}

function slideHtml({ eyebrow, title, summary, points = [], code = "", footer = "" }) {
  const pointMarkup = points.length ? `<ul>${bullets(points)}</ul>` : "";
  const codeMarkup = code ? codeBlock(code) : "";
  return `<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>${escapeHtml(title)}</title>
  <style>
    * { box-sizing: border-box; }
    body {
      margin: 0;
      width: 1280px;
      height: 720px;
      overflow: hidden;
      background: #f6f7fb;
      color: #1f2430;
      font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      letter-spacing: 0;
    }
    .stage {
      width: 1280px;
      height: 720px;
      display: grid;
      grid-template-columns: 1fr;
      align-items: center;
      padding: 54px 68px;
      background:
        linear-gradient(90deg, rgba(37, 99, 235, 0.11), transparent 42%),
        linear-gradient(180deg, #ffffff, #edf1f7);
    }
    .frame {
      border: 1px solid #d8deea;
      border-radius: 8px;
      background: rgba(255, 255, 255, 0.94);
      box-shadow: 0 20px 48px rgba(27, 36, 52, 0.14);
      padding: 44px 48px;
      min-height: 560px;
      display: grid;
      grid-template-columns: minmax(0, 0.9fr) minmax(0, 1.1fr);
      gap: 44px;
      align-items: center;
    }
    .eyebrow {
      color: #2563eb;
      font-size: 22px;
      font-weight: 800;
      text-transform: uppercase;
      margin-bottom: 16px;
    }
    h1 {
      margin: 0;
      font-size: 54px;
      line-height: 1.02;
      max-width: 560px;
      letter-spacing: 0;
    }
    .summary {
      margin-top: 24px;
      color: #4b5565;
      font-size: 25px;
      line-height: 1.32;
      max-width: 560px;
    }
    ul {
      margin: 0;
      padding-left: 28px;
      display: grid;
      gap: 16px;
      font-size: 26px;
      line-height: 1.25;
    }
    li::marker {
      color: #168a5b;
    }
    pre {
      margin: 0;
      width: 100%;
      max-height: 462px;
      overflow: hidden;
      white-space: pre-wrap;
      border: 1px solid #cfd7e6;
      border-radius: 8px;
      background: #141a24;
      color: #f7fafc;
      padding: 24px;
      font-size: 22px;
      line-height: 1.28;
    }
    .footer {
      margin-top: 24px;
      color: #667085;
      font-size: 20px;
      line-height: 1.3;
    }
  </style>
</head>
<body>
  <main class="stage">
    <section class="frame">
      <div>
        <div class="eyebrow">${escapeHtml(eyebrow)}</div>
        <h1>${escapeHtml(title)}</h1>
        <p class="summary">${escapeHtml(summary)}</p>
        ${footer ? `<p class="footer">${escapeHtml(footer)}</p>` : ""}
      </div>
      <div>
        ${codeMarkup || pointMarkup}
      </div>
    </section>
  </main>
</body>
</html>`;
}

const requestExcerpt = JSON.stringify({
  customer: request.customer,
  channel: request.channel,
  deadline: request.deadline,
  budget_usd: request.budget_usd,
  attachments: request.attachments,
}, null, 2);

const outputExcerpt = [
  "Requirements:",
  ...packet.requirements.map((item) => `- ${item}`),
  "",
  "Policy flags:",
  ...packet.policy_flags.map((item) => `- ${item}`),
  "",
  "Human approval questions:",
  ...packet.approval_questions.slice(0, 3).map((item) => `- ${item}`),
].join("\n");

const workflowExcerpt = packet.agent_steps
  .map((step) => `${step.agent}: ${step.action}\n  human_gate=${step.human_gate}\n  qwen_role=${step.qwen_cloud_role}`)
  .join("\n\n");

const proofExcerpt = [
  `Qwen live evidence file: ${hasLiveEvidence ? "present" : "pending"}`,
  `Generated packet live summary: ${hasLiveSummary ? "present" : "pending"}`,
  "Alibaba Cloud deployment proof: pending",
  "Public repo: https://github.com/memekr/biddesk-autopilot",
  "Working demo: https://memekr.github.io/biddesk-autopilot/",
  "Truth boundary: do not claim Alibaba deployment yet.",
].join("\n");

const slides = [
  ["01-title.html", {
    eyebrow: "Qwen Cloud Hackathon - Track 4",
    title: "BidDesk Autopilot",
    summary: "A multi-agent proposal operations system that turns messy RFP intake into governed proposal packets.",
    points: [
      "Five specialized agents: intake, research, policy, quote, approval.",
      "Human approval gates protect pricing, legal, delivery, and customer commitments.",
      "Synthetic judge demo and public repository are ready.",
    ],
    footer: "Prototype video asset for public upload preflight.",
  }],
  ["03-request.html", {
    eyebrow: "Synthetic request input",
    title: "Messy intake becomes structured work",
    summary: "The demo starts with a customer RFI containing security, integration, legal, and quote constraints.",
    code: requestExcerpt,
    footer: "All visible data is synthetic.",
  }],
  ["04-output.html", {
    eyebrow: "Generated proposal packet",
    title: "Agents produce usable submission evidence",
    summary: "The CLI creates Markdown and JSON artifacts judges can reproduce locally.",
    code: outputExcerpt,
    footer: "The generated packet is regenerated before every render.",
  }],
  ["05-workflow.html", {
    eyebrow: "Agent workflow",
    title: "Autonomy with governance",
    summary: "Each agent has a defined role and a Qwen Cloud live-path responsibility.",
    code: workflowExcerpt,
    footer: "The approval agent remains the final human gate.",
  }],
  ["06-proof.html", {
    eyebrow: "Proof and upload boundary",
    title: "Ready to upload, not ready to overclaim",
    summary: "The video can be uploaded publicly after YouTube, Vimeo, or Youku access is available.",
    code: proofExcerpt,
    footer: "No credentials, account IDs, billing pages, or secrets are included.",
  }],
];

for (const [filename, config] of slides) {
  fs.writeFileSync(path.join(slideDir, filename), slideHtml(config), "utf8");
}

const voiceover = `BidDesk Autopilot is a Qwen-ready multi-agent proposal operations prototype for the Global AI Hackathon Series with Qwen Cloud.

The demo begins with synthetic RFP intake: budget, deadline, attachments, security review, API integration, legal review, and penalty terms. The command line tool turns that messy request into both Markdown and JSON proposal packets.

Five agents divide the work. Intake extracts requirements. Research summarizes account and technical assumptions. Policy checks risky commitments. Quote drafts line items. Approval routes pricing, legal, delivery, and customer commitments back to a human before anything is sent.

The public repository and GitHub Pages demo are already available for judge testing. The live Qwen Cloud evidence file is redacted and present when the local credentialed run succeeds. Alibaba Cloud deployment proof is still pending, so this video does not claim that the backend is deployed on Alibaba Cloud.

The final submission should use this public video only with matching Devpost wording: Qwen-ready prototype, public repository, synthetic working demo, and human approval gates.`;

fs.writeFileSync(path.join(outDir, "voiceover.txt"), voiceover, "utf8");
fs.writeFileSync(path.join(outDir, "metadata.json"), JSON.stringify({
  generatedAt: new Date().toISOString(),
  slideCount: slides.length + 1,
  hasLiveEvidence,
  hasLiveSummary,
  alibabaProof: "pending",
}, null, 2), "utf8");
NODE

capture() {
  local url="$1"
  local png="$2"
  npx --yes playwright screenshot -b chromium --viewport-size "1280,720" --timeout 30000 "$url" "$png" >/dev/null
}

capture "file://$SLIDE_DIR/01-title.html" "$FRAME_DIR/01-title.png"
capture "file://$ROOT/docs/index.html" "$FRAME_DIR/02-public-demo.png"
capture "file://$SLIDE_DIR/03-request.html" "$FRAME_DIR/03-request.png"
capture "file://$SLIDE_DIR/04-output.html" "$FRAME_DIR/04-output.png"
capture "file://$SLIDE_DIR/05-workflow.html" "$FRAME_DIR/05-workflow.png"
capture "file://$SLIDE_DIR/06-proof.html" "$FRAME_DIR/06-proof.png"

CONCAT="$WORK_DIR/frames.txt"
: > "$CONCAT"
for frame in "$FRAME_DIR"/*.png; do
  printf "file '%s'\n" "$frame" >> "$CONCAT"
  printf "duration 22\n" >> "$CONCAT"
done
printf "file '%s'\n" "$(ls "$FRAME_DIR"/*.png | sort | tail -n 1)" >> "$CONCAT"

ffmpeg -y -loglevel error -f concat -safe 0 -i "$CONCAT" \
  -vf "fps=30,format=yuv420p" \
  -c:v libx264 -movflags +faststart "$BASE_VIDEO"

if command -v say >/dev/null 2>&1; then
  say -r 178 -o "$AUDIO" -f "$VOICEOVER"
  ffmpeg -y -loglevel error -i "$BASE_VIDEO" -i "$AUDIO" \
    -c:v copy -c:a aac -b:a 128k -shortest -movflags +faststart "$VIDEO"
else
  cp "$BASE_VIDEO" "$VIDEO"
fi

ffprobe -v error \
  -show_entries format=duration,size:stream=codec_name,width,height \
  -of json "$VIDEO" > "$PROBE"

DURATION="$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$VIDEO")"
if ! awk "BEGIN { exit !($DURATION < 179) }"; then
  echo "Rendered video is too long: ${DURATION}s" >&2
  exit 1
fi

shasum -a 256 "$VIDEO" > "$SHA"

echo "Qwen demo video preupload asset: $VIDEO"
echo "Duration seconds: $DURATION"
echo "ffprobe: $PROBE"
echo "sha256: $SHA"
