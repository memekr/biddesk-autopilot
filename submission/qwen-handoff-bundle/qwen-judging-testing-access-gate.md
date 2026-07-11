# Qwen Judging Testing Access Gate

Public sources rechecked: 2026-07-11 KST.

Deadline: July 20, 2026, 2:00 PM PDT, which is July 21, 2026, 6:00 AM KST.

## Current Source Facts

- Devpost overview and rules page header show the Qwen Cloud hackathon deadline as July 20, 2026, 2:00 PM PDT.
- Devpost rules require a public code repository with source, assets, setup instructions, and a visible open-source license.
- Devpost rules require proof that the backend is running on Alibaba Cloud through a link to a code file demonstrating Alibaba Cloud services and APIs.
- Devpost rules require an architecture diagram, text description, track selection, and a public demo video.
- Devpost rules say access must be provided to a working project for judging and testing through a website, functioning demo, or test build.
- If a judging website is private, the entrant must include login credentials in testing instructions.
- Judges may choose to judge only from the text, images, and video, so the public assets must stand alone even if the live test path is not exercised.

## Required Testing Packet

Use this gate before filling Devpost testing instructions, recording the final demo, accepting official rules, or clicking final `Submit project`.

| Item | Minimum acceptable public evidence | Truth boundary |
| --- | --- | --- |
| Working project access | Public Alibaba Cloud endpoint, public demo site, or reproducible local test build instructions | Do not claim a hosted app if only local CLI exists |
| Repository test path | README command sequence that creates the same sample packet judges see in the video | Synthetic data only |
| Qwen Cloud live path | `--use-qwen` proof plus generated `Qwen Cloud Live Summary` | Do not expose API keys or account IDs |
| Alibaba Cloud proof | Public code-file URL, endpoint URL, or redacted deployment proof showing Alibaba Cloud backend | Hide billing, account, and private console identifiers |
| Testing instructions | Devpost-ready paragraph with repo, demo URL, endpoint/test build, expected output, and any safe test credentials | Do not put real personal, billing, or privileged credentials into Devpost |
| Fallback judging path | Video plus sample report lets judges evaluate if live endpoint is unavailable | Mark fallback as local prototype if Qwen or Alibaba proof is missing |

## Devpost Testing Instructions Draft

Use this for the current public-repository/test-build path:

> Judges can test BidDesk Autopilot from the public repository at https://github.com/memekr/biddesk-autopilot. The README includes a reproducible local path using synthetic data: run `uv sync --all-groups`, then `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json` to generate the same sample packet shown in the submission materials. Redacted live Qwen Cloud evidence is available at https://github.com/memekr/biddesk-autopilot/blob/main/submission/qwen-live-call-evidence.md. Alibaba Cloud deployment proof is still pending and is not claimed in this testing path.

Only add a credential sentence if the entrant deliberately creates safe judge-only credentials:

> Test login, if requested by the form: username `[JUDGE_TEST_USERNAME]`, password `[JUDGE_TEST_PASSWORD]`. These credentials must be temporary, non-billing, non-admin, and contain only synthetic sample data.

## GO / DOWNGRADE / STOP

GO - provide working project access only if a public repository, public video, Alibaba Cloud endpoint or test build, and deployment proof are all present.

DOWNGRADE - provide local test build instructions if the repository and video are public but live endpoint or Qwen/Alibaba proof is incomplete. Use "Qwen-ready local prototype" wording.

STOP - external commitment required before account login, cloud deployment, public endpoint creation, credential creation, repository publication, video upload, rules acceptance, or final Devpost `Submit project`.
