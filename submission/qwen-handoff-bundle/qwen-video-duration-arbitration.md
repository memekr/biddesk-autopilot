# Qwen Video Duration Arbitration Gate

Public sources rechecked: 2026-07-01 KST.

Deadline: July 9, 2026, 2:00 PM PDT, which is July 10, 2026, 6:00 AM KST.

## Purpose

Use this gate before recording, uploading, publishing, or pasting the demo video URL into Devpost.

Public Qwen materials currently expose two duration cues:

- Devpost overview says the video should be about 3 minutes.
- Official Devpost rules say the demonstration video should be less than three (3) minutes and that judges are not required to watch beyond three minutes.
- Qwen Cloud challenge/resource summaries may reference a 5-minute-or-less demo asset.

Use the strictest public requirement for the final Devpost submission: less than 3 minutes. Treat any 5-minute reference as a maximum that is superseded by the official Devpost rules for this packet.

## Recording Plan

Target runtime: 2:30.

Hard stop: 2:55.

Do not upload any video at or above 3:00.

| Segment | Target time | Must show |
| --- | ---: | --- |
| Problem and track | 0:00-0:20 | Messy customer RFI to quote-ready proposal, Track 4 Autopilot Agent |
| Input and run | 0:20-0:55 | `reports/sample-request.json` and CLI command |
| Agent outputs | 0:55-1:45 | Intake, research, policy, quote, approval sections |
| Qwen/Alibaba proof | 1:45-2:25 | Redacted live Qwen summary and Alibaba Cloud endpoint if available; otherwise truthful Qwen-ready wording |
| Close | 2:25-2:55 | Public repo, architecture, license, human approval boundary |

## GO / DOWNGRADE / STOP

GO - upload the demo video only if the exported public video is under 3 minutes, publicly viewable, shows the project functioning, and uses claim wording that matches captured Qwen Cloud and Alibaba Cloud proof.

DOWNGRADE - record the local prototype path only if live Qwen Cloud or Alibaba Cloud proof is missing. Say "Qwen-ready local prototype" and keep the video under 3 minutes.

STOP - external commitment required before video upload, public URL publication, account login, rules acceptance, or final Devpost `Submit project`.
