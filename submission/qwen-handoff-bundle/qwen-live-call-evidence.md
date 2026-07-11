# Qwen Cloud Live Call Evidence

Captured: July 11, 2026, approximately 1:42 AM KST.

## Account And Cost Boundary

- Qwen Cloud Google sign-in completed with `spdish12@gmail.com`.
- The required Qwen Cloud Customer Agreement, Privacy Policy, and Terms of Use were accepted for first use.
- Billing overview showed total spend and total due of `$0.00`.
- The Free Tier console showed 246 eligible models with active free quota.
- The console showed `Free quota only` for eligible models; official Qwen Cloud documentation says unverified accounts have this enabled by default and calls stop instead of incurring charges after quota exhaustion.
- No payment method was added and no paid token plan was purchased.

## Secret Handling

- One API key was generated for `BidDesk Autopilot Live Proof`.
- The key is stored only in local `.env`, which is ignored by `.gitignore` and has filesystem mode `600`.
- The key value is not present in this packet, terminal output, generated reports, or the handoff bundle.
- A first unrecoverable key was immediately deleted before the final key was generated.

## Validation Command

```bash
set -a
source .env
set +a
uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen
```

Observed redacted status:

```text
Qwen connector: configured
Base URL: https://dashscope-intl.aliyuncs.com/compatible-mode/v1
Model: qwen-plus
API key source: QWEN_API_KEY
Wrote reports/sample-proposal-packet.md
Wrote reports/sample-proposal-packet.json
```

The Markdown report contains a complete `Qwen Cloud Live Summary`; the JSON report contains the same content in `qwen_cloud_live_summary`. The second live run used a grounded system prompt that requires facts from the supplied JSON only, forbids invented evidence, and limits the response to a complete summary under 220 words.

## Truth Boundary

- Live Qwen Cloud inference is now verified for the local synthetic demo.
- Alibaba Cloud backend deployment is not yet verified.
- The Devpost entry may claim live Qwen Cloud use only alongside this redacted evidence and generated output. It must not claim Alibaba Cloud deployment until a public code-file proof link exists.

GO - claim live Qwen Cloud inference for the synthetic local demo.

DOWNGRADE - remove the live claim if the public repository does not include the grounded connector code and reproducible instructions.

STOP - do not expose `.env`, the API key, account identifiers, or billing details in public assets.
