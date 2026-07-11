# Qwen Live Connector Gate

Public sources rechecked: 2026-06-30 KST.

Deadline: July 9, 2026, 2:00 PM PDT, which is July 10, 2026, 6:00 AM KST.

## Purpose

Use this gate after Qwen Cloud account/API setup and before recording a live demo, publishing README claims, accepting rules, or clicking Devpost `Submit project`.

The local prototype now includes an explicit Qwen Cloud connector path:

```bash
export QWEN_API_KEY="..."
export QWEN_BASE_URL="https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
export QWEN_MODEL="qwen-plus"
uv run biddesk-autopilot reports/sample-request.json \
  --qwen-status \
  --use-qwen \
  --out reports/sample-proposal-packet.md \
  --json reports/sample-proposal-packet.json
```

`DASHSCOPE_API_KEY` can be used instead of `QWEN_API_KEY`. Do not commit `.env` files, shell history containing secrets, screenshots with keys, billing pages, account IDs, or private console identifiers.

## Proof To Capture

| Proof | Minimum acceptable evidence | Redaction rule |
| --- | --- | --- |
| Connector status | Terminal output showing `Qwen connector: configured`, base URL, model, and generated output paths | No API key value visible |
| Live summary | `reports/sample-proposal-packet.md` includes `Qwen Cloud Live Summary` | Synthetic sample data only |
| JSON artifact | `reports/sample-proposal-packet.json` includes `qwen_cloud_live_summary` | No raw secrets or account data |
| Alibaba Cloud deployment | Public endpoint URL, deployment log, or console screenshot for the deployed backend | Hide account IDs and billing details |
| Demo video | Show connector status, live generation, output packet, and Alibaba Cloud endpoint | Less than 3 minutes |

## GO / DOWNGRADE / STOP

GO - claim live Qwen Cloud inference using `qwen-live-call-evidence.md`; claim end-to-end Alibaba Cloud deployment only after separate deployment proof exists.

DOWNGRADE - use Qwen-ready prototype wording if `--qwen-status` works but `--use-qwen` or Alibaba Cloud deployment proof is missing.

STOP - never publish `.env` or an API key; Alibaba Cloud deployment, public URL publication, and final Devpost `Submit project` still require their own proof gates.
