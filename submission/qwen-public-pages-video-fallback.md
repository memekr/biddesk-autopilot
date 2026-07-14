# Qwen Public Pages Video Fallback

Generated for the July 13, 2026 KST submission run. Updated July 14, 2026 KST after the official YouTube video was published.

Use this after `submission/qwen-demo-video-preupload.md` and before final Devpost field paste. It records the public GitHub Pages MP4 fallback, which is now supplemental to the official YouTube demo.

## Event URL and Source Snapshot

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon
- Current public source state on July 13, 2026 KST: Devpost overview and Official Rules still show the submission deadline as July 20, 2026, 2:00 PM Pacific Time; public Devpost surfaces showed about 7,769 participants during this run.

## Deadline and Timezone

- Confirmed deadline: July 20, 2026, 2:00 PM PDT.
- UTC conversion: July 20, 2026, 9:00 PM UTC.
- KST conversion: July 21, 2026, 6:00 AM KST.

## Official Video Requirement

The Official Rules require a public demonstration video that is less than three minutes, shows the project functioning, and is publicly visible on YouTube, Vimeo, or Youku. The official public YouTube URL is https://youtu.be/mEV2CP06JQo. The GitHub Pages MP4 fallback is useful supplemental public evidence, but it should not replace the YouTube URL in Devpost.

## Public Fallback Asset

- Public demo page: https://memekr.github.io/biddesk-autopilot/
- Public MP4 target: https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4
- Repository file: `docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4`
- Source render: `output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4`
- Runtime: `105.500000` seconds.
- Size: `2238996` bytes.
- SHA-256: `cb70b6e2f88105a8f9da422faf1c6df1cc657597e257591e69c0ec220cd3afb2`.

## Official Video Evidence

- Public URL: https://youtu.be/mEV2CP06JQo
- Published title: `BidDesk Autopilot Qwen Ready Proposal Operations Demo`
- Runtime: `1:46`
- YouTube Studio status: public, upload complete, no copyright issues found.
- Public verification: YouTube oEmbed returned HTTP 200.

## Claim Boundary

Allowed wording:

> The official public YouTube demo is available at https://youtu.be/mEV2CP06JQo. A public GitHub Pages preview of the validated 1:45 demo video is also available as supplemental evidence.

Not allowed:

> The GitHub Pages MP4 by itself completes the Devpost video requirement.

Do not paste the GitHub Pages MP4 URL into Devpost as the official video URL; use https://youtu.be/mEV2CP06JQo.

## Validation

Required local checks:

```bash
ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 \
  docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4
shasum -a 256 docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4
bash scripts/submission-readiness.sh
bash scripts/prepare-qwen-submission-handoff.sh
```

Expected result: the MP4 duration remains below three minutes, hash matches the source preupload asset, the public demo page embeds the video without credentialed data, and the handoff bundle includes the fallback sheet and MP4.

## GO / DOWNGRADE / STOP

GO - use https://youtu.be/mEV2CP06JQo as the official Devpost video URL and the GitHub Pages MP4 only as supplemental public demo evidence.

DOWNGRADE - keep final Devpost wording truthful if the YouTube URL becomes unavailable before final paste.

STOP - external commitment required before rules acceptance or final Devpost `Submit project`.
