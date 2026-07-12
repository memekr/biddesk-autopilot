# Qwen Public Repository Publication

Captured: 2026-07-11 10:28 KST.

Use this after `submission/qwen-final-public-proof-evidence-lock.md` and before
`submission/qwen-public-url-smoke-test.md`, `submission/qwen-devpost-field-lock.md`,
public video upload, rules acceptance, or the final Devpost `Submit project` button.

## Event Source Snapshot

- Event URL: https://qwencloud-hackathon.devpost.com/
- Rules URL: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge URL: https://www.qwencloud.com/challenge/hackathon
- Devpost public header shows `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- Qwen Cloud challenge page says the submission deadline was extended to July 20.
- Qwen Cloud challenge page says coupon redemption remained July 9 at 11:59 PM GMT+7.
- Devpost public overview showed 7,561 participants during the July 11 recheck.

## Public Repository

- Repository URL: https://github.com/memekr/biddesk-autopilot
- Visibility: public.
- Owner: `memekr`, the GitHub account authenticated in the local `gh` CLI.
- License: MIT at https://github.com/memekr/biddesk-autopilot/blob/main/LICENSE
- Local source path: `/Users/mac/hackathon-agent/biddesk-autopilot`

The public repository is the judge-access baseline. It contains the CLI source,
README, license, tests, synthetic sample request, generated sample packet,
architecture notes, Devpost draft, redacted Qwen Cloud live-call evidence, and
the Qwen submission packet.

## Public Static Demo

- Demo URL: https://memekr.github.io/biddesk-autopilot/
- Source file: `docs/index.html`
- Scope: synthetic-data judge demo for workflow, proposal packet, proof gate,
  and Devpost testing instructions.
- Boundary: this is not Alibaba Cloud deployment proof and must not be used to
  claim an Alibaba-hosted endpoint.

## Judge Test Build Path

Paste this into Devpost testing instructions if no hosted Alibaba Cloud endpoint
is available yet:

> Judges can test BidDesk Autopilot from the public web demo at
> https://memekr.github.io/biddesk-autopilot/ and the public repository at
> https://github.com/memekr/biddesk-autopilot. The README includes a
> reproducible local path using synthetic data: run `uv sync --all-groups`, then
> `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out
> reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
> The expected output is the included sample proposal packet and JSON artifact.
> Live Qwen Cloud evidence is redacted in `submission/qwen-live-call-evidence.md`.
> The web demo and local test build do not claim Alibaba Cloud deployment;
> Alibaba Cloud proof is still pending.

## Secret And Account Boundary

- `.env` is ignored by `.gitignore` and has local filesystem mode `600`.
- `.venv`, cache folders, and Python bytecode are ignored.
- The tracked evidence files describe the Qwen API key source but do not contain
  the key value, account IDs, billing identifiers, cookies, or tokens.
- The public repository must not include real customer data, payment details,
  tax data, government identity data, or private cloud console identifiers.

## Publication Verification

- `gh auth status` confirmed the local `gh` CLI is authenticated as `memekr`.
- `gh repo view memekr/biddesk-autopilot` returned no existing repository before
  publication, so the chosen public repository name was available.
- Pre-publish secret scan used the Git-tracked candidate set and excluded
  `.env`, virtualenvs, cache folders, Python bytecode, and generated zip files.
- Initial publication commit: `a5a4189698de581f7ea7a002ba9ad3c405338be6`.
- GitHub reported the repository as public with default branch `main` and
  `pushedAt` `2026-07-11T01:37:32Z`.
- Unauthenticated raw URL checks at 2026-07-11 10:38 KST:
  - `README.md`: HTTP 200.
  - `LICENSE`: HTTP 200.
  - `submission/qwen-live-call-evidence.md`: HTTP 200.
  - `.env`: HTTP 404.
- Final public verification confirmed that the GitHub URL opens without login
  for the required source, license, README, and redacted live evidence paths.

## GO / DOWNGRADE / STOP

GO - use the public repository URL for Devpost after the GitHub page opens
without login and shows the README, license, source, tests, sample artifacts,
and `docs/index.html` public demo source.

DOWNGRADE - use the judge test-build path above if Alibaba Cloud deployment proof
or public demo video is still missing.

STOP - do not claim Alibaba Cloud deployment, public video availability, voucher
approval, or final Devpost submission from this repository publication alone.
