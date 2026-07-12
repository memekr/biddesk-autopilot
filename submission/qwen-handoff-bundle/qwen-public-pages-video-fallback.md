# Qwen Public Pages Video Fallback

Generated for the July 13, 2026 KST submission run.

Use this after `submission/qwen-demo-video-preupload.md` and before final Devpost field paste. It records the public GitHub Pages MP4 fallback created after the YouTube Studio file chooser failed under Chrome extension file-access restrictions.

## Event URL and Source Snapshot

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon
- Current public source state on July 13, 2026 KST: Devpost overview and Official Rules still show the submission deadline as July 20, 2026, 2:00 PM Pacific Time; public Devpost surfaces showed 7,722 participants during this run.

## Deadline and Timezone

- Confirmed deadline: July 20, 2026, 2:00 PM PDT.
- UTC conversion: July 20, 2026, 9:00 PM UTC.
- KST conversion: July 21, 2026, 6:00 AM KST.

## Official Video Requirement

The Official Rules require a public demonstration video that is less than three minutes, shows the project functioning, and is publicly visible on YouTube, Vimeo, or Youku. The GitHub Pages MP4 fallback is useful public evidence, but it is not a rules-compliant final Devpost video URL unless the live Devpost form explicitly accepts it.

## Public Fallback Asset

- Public demo page: https://memekr.github.io/biddesk-autopilot/
- Public MP4 target: https://memekr.github.io/biddesk-autopilot/assets/biddesk-autopilot-qwen-demo-preupload.mp4
- Repository file: `docs/assets/biddesk-autopilot-qwen-demo-preupload.mp4`
- Source render: `output/playwright/qwen-demo-video/biddesk-autopilot-qwen-demo-preupload.mp4`
- Runtime: `105.500000` seconds.
- Size: `2238996` bytes.
- SHA-256: `cb70b6e2f88105a8f9da422faf1c6df1cc657597e257591e69c0ec220cd3afb2`.

## Upload Attempt Evidence

- YouTube Studio upload tab was open under the existing Chrome session.
- File chooser opened from the `파일 선택` button.
- `fileChooser.setFiles` failed with `Not allowed`.
- Narrow unblock from Chrome upload troubleshooting: go to `chrome://extensions`, click Details under the ChatGPT Chrome Extension, and enable `Allow access to file URLs`.

## Claim Boundary

Allowed wording:

> A public GitHub Pages preview of the validated 1:45 demo video is available for review. The final Devpost video field still needs a public YouTube, Vimeo, or Youku URL before submission.

Not allowed:

> The Devpost video requirement is complete.

Do not paste the GitHub Pages MP4 URL into Devpost as the official video URL unless the live form explicitly accepts non-YouTube/Vimeo/Youku hosts.

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

GO - use the GitHub Pages MP4 only as supplemental public demo evidence and recording proof.

DOWNGRADE - keep final Devpost wording truthful if the official video host remains missing.

STOP - external commitment required before YouTube, Vimeo, or Youku upload, rules acceptance, or final Devpost `Submit project`.
