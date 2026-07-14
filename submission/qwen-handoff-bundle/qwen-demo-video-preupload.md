# Qwen Demo Video Preupload Packet

Generated for the July 12, 2026 KST submission run. Updated July 14, 2026 KST after the official YouTube publication.

Use this packet after `submission/qwen-final-72-hour-recording-lock.md` and before final Devpost paste. It records the local video asset, official YouTube URL, validation command, and truth boundary.

## Event URL and Source Snapshot

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon
- Current public source state on July 13, 2026 KST: Devpost overview and Official Rules show the submission deadline as July 20, 2026, 2:00 PM Pacific Time; public pages showed about 7,769 participants during this run.

## Deadline and Timezone

- Confirmed deadline: July 20, 2026, 2:00 PM PDT.
- UTC conversion: July 20, 2026, 9:00 PM UTC.
- KST conversion: July 21, 2026, 6:00 AM KST.

## Video Requirement

The Official Rules require a public demonstration video that is less than three minutes, shows the project functioning on its intended device, is publicly visible on YouTube, Vimeo, or Youku, and excludes unauthorized third-party trademarks, music, or copyrighted material.

## Local Video Asset

- Render command: `bash scripts/render-qwen-demo-video.sh`
- Local MP4 path after rendering: `output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4`
- Probe output: `output/playwright/qwen-demo-video/ffprobe.json`
- Hash output: `output/playwright/qwen-demo-video/sha256.txt`
- Voiceover source: `output/playwright/qwen-demo-video/voiceover.txt`
- Repository policy: generated video working files stay under ignored `output/`; the validated final MP4 may be copied to `docs/assets/` only as a public Pages fallback with the official-host boundary below.

## Public Pages Fallback

- Public demo page: https://memekr.github.io/biddesk-autopilot/
- Public MP4 fallback target: https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4
- Repository file: `docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4`
- Boundary: this is a public preview and supplemental evidence, not the final Official Rules-compliant video URL unless the live Devpost form explicitly accepts it.

## Official Public YouTube Video

- Public URL: https://youtu.be/mEV2CP06JQo
- Published title: `BidDesk Autopilot Qwen Ready Proposal Operations Demo`
- Published date shown in YouTube Studio: July 14, 2026.
- Public runtime shown in YouTube Studio: `1:46`.
- YouTube Studio status: upload 100%, copyright check complete, no issues found, audience set to not made for kids, visibility set to public.
- Public verification: YouTube oEmbed returned HTTP 200 for `https://youtu.be/mEV2CP06JQo` with the published title and provider `YouTube`.

## Content Map

| Segment | Evidence shown | Claim boundary |
| --- | --- | --- |
| Title and track | BidDesk Autopilot, Track 4 Autopilot Agent | Qwen-ready prototype unless final live proofs match |
| Public working demo | `docs/index.html` rendered through Playwright | Working-project access aid, not Alibaba deployment proof |
| Synthetic input | `reports/sample-request.json` | Synthetic data only |
| Generated output | `reports/sample-proposal-packet.md` and JSON-derived summary | Local deterministic packet plus redacted live Qwen evidence when available |
| Agent workflow | intake, research, policy, quote, approval | Human approval gate remains final |
| Proof boundary | public repo, GitHub Pages demo, Qwen evidence, Alibaba pending | Do not claim Alibaba Cloud deployment yet |

## Upload Plan

1. Run `bash scripts/render-qwen-demo-video.sh`.
2. Confirm `ffprobe.json` shows duration under 179 seconds and 1280x720 H.264 output.
3. Use the published YouTube URL `https://youtu.be/mEV2CP06JQo` as the official Devpost demo video URL.
4. Keep the GitHub Pages MP4 as supplemental preview evidence only.
5. Re-run a public URL check before final Devpost paste if YouTube metadata changes.

## Submission Answer Update

Use this video title:

`BidDesk Autopilot Qwen Ready Proposal Operations Demo`

Use this public description:

`BidDesk Autopilot turns synthetic RFP intake into an approval-ready proposal packet using intake, research, policy, quote, and approval agents. The video shows the reproducible local demo, public working-project path, redacted Qwen Cloud evidence boundary, and human approval gates. Alibaba Cloud deployment proof is still pending and is not claimed in this video.`

## Validation

Current run validation command:

```bash
bash scripts/render-qwen-demo-video.sh
ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 \
  output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4
```

Expected result: duration is below `179` seconds, video renders at 1280x720, and the MP4 contains no secrets, account IDs, billing pages, or private cloud console data.

Current render evidence from July 12, 2026 KST:

- MP4 duration: `105.500000` seconds.
- Video stream: H.264, 1280x720.
- Audio stream: AAC voiceover generated from the local `voiceover.txt` script.
- File size: `2238996` bytes.
- SHA-256: `cb70b6e2f88105a8f9da422faf1c6df1cc657597e257591e69c0ec220cd3afb2`.
- Metadata: live Qwen evidence present, live summary present, Alibaba proof pending.

July 13, 2026 KST upload retry:

- YouTube Studio upload dialog was open in the existing signed-in Chrome session.
- The `파일 선택` file chooser opened successfully, but `fileChooser.setFiles` failed with `Not allowed`.
- Narrow unblock from Chrome upload troubleshooting: go to `chrome://extensions`, click Details under the ChatGPT Chrome Extension, and enable `Allow access to file URLs`.
- Public fallback created by copying the validated MP4 to `docs/assets/` and embedding it in the GitHub Pages demo.

July 14, 2026 KST official YouTube publication:

- Native macOS file picker selection from YouTube Studio succeeded with the same validated MP4.
- YouTube Studio showed upload complete, public visibility, runtime `1:46`, and no copyright issues found.
- Public URL: https://youtu.be/mEV2CP06JQo
- Public oEmbed verification returned HTTP 200 and the published title `BidDesk Autopilot Qwen Ready Proposal Operations Demo`.

## GO / DOWNGRADE / STOP

GO - use https://youtu.be/mEV2CP06JQo as the official Devpost demo video URL if the final form accepts YouTube and the public URL still opens.

DOWNGRADE - use prototype-only Devpost wording if Alibaba Cloud deployment proof remains missing.

STOP - external commitment required before rules acceptance or final Devpost `Submit project`.
