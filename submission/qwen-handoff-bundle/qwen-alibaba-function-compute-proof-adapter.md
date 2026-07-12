# Qwen Alibaba Function Compute Proof Adapter

Generated for the July 13, 2026 KST submission run.

Use this after `submission/qwen-deployment-proof-gate.md` and before `submission/qwen-public-asset-ledger.md`. It records the public code-file candidate for the Alibaba Cloud deployment proof field without claiming that a live Alibaba Cloud backend has been created.

## Event URL and Source Snapshot

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon
- Current public source state on July 13, 2026 KST: Devpost overview and Official Rules still show the submission deadline as July 20, 2026, 2:00 PM Pacific Time; public pages showed 7,722 participants during this run.
- Current video-host source conflict: the Devpost overview says videos must be uploaded to YouTube, Vimeo, or Facebook Video, while Official Rules section 4 says YouTube, Vimeo, or Youku. Use the Official Rules host list unless the live Devpost form clearly accepts another host.

## Proof Code File

- Local source: `src/biddesk_autopilot/alibaba_function_compute.py`
- Public URL target: https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py
- Handler path: `biddesk_autopilot.alibaba_function_compute.handler`
- Intended service: Alibaba Cloud Function Compute event function.
- Cost boundary: this run did not create, activate, deploy, or invoke an Alibaba Cloud resource.

## What The Code Demonstrates

- A Function Compute-compatible `handler(event, context)` entrypoint.
- BidDesk request parsing from raw JSON or an HTTP-style `body` field.
- Reuse of the existing deterministic proposal packet engine.
- Sanitized Alibaba Cloud runtime proof using FC metadata such as `FC_REGION`, `FC_FUNCTION_NAME`, and handler name.
- Secret redaction by design: credential values, account IDs, tokens, billing data, and console identifiers are not returned by the handler.
- Execution-role readiness: the handler records only whether role credentials appear to be present, not the values.

## Devpost Use Boundary

Use the public code-file URL as the Alibaba Cloud proof-code candidate only with this truthful qualifier:

> The repository includes an Alibaba Cloud Function Compute handler at `src/biddesk_autopilot/alibaba_function_compute.py`; live Alibaba Cloud deployment proof is still pending until the entrant completes the console deployment and captures the public endpoint or deployment evidence.

Do not paste wording that says the backend is already running on Alibaba Cloud until one of these is true:

- Function Compute deployment succeeds under the entrant account.
- A public endpoint, deployment log, or console proof is captured without secrets.
- The public code-file URL opens in a private browser.
- The public URL smoke test records the final proof state.

## Local Validation

Current validation target:

```bash
uv run pytest
uv run ruff check .
uv run ty check src tests
```

The new test locks that the handler returns the proposal packet and sanitized runtime metadata while excluding `ALIBABA_CLOUD_ACCESS_KEY_ID`, `ALIBABA_CLOUD_ACCESS_KEY_SECRET`, and `ALIBABA_CLOUD_SECURITY_TOKEN` values from the rendered response.

## GO / DOWNGRADE / STOP

GO - use the code-file URL as a proof-code candidate after it is pushed publicly and opens without login.

DOWNGRADE - submit prototype wording if the Function Compute handler is public but no live Alibaba Cloud deployment evidence exists.

STOP - external commitment required before Alibaba Cloud console activation, service-linked-role acceptance, function deployment, endpoint publication, screenshot capture, or any billable resource action.
