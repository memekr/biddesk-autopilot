# Qwen Demo Script

Target length: 2-3 minutes.

## Shot List

1. Show the customer request JSON with budget, deadline, attachments, RFI text, security requirements, API integration, legal review, custom integration, and penalty terms.
2. Run `uv run biddesk-autopilot reports/sample-request.json --qwen-status --out reports/sample-proposal-packet.md --json reports/sample-proposal-packet.json`.
3. Open the Markdown proposal packet and show:
   - extracted requirements,
   - policy flags,
   - quote draft,
   - human approval questions.
4. Open the JSON packet and show agent-step structure for intake, research, policy, quote, and approval.
5. If Qwen Cloud is connected, run the same command with `--use-qwen`, show `Qwen Cloud Live Summary` in the output packet, and show the Alibaba Cloud deployed endpoint.
6. End with the truth boundary: pricing/legal/customer commitments are never sent without human approval.

## Demo Claim Rules

- Say "Qwen-ready local prototype" if Qwen Cloud API and Alibaba Cloud deployment are not verified.
- Say "running on Qwen Cloud" only after a live endpoint and Qwen Cloud call path are shown.
- Do not show API keys, account IDs, billing pages, or private console identifiers.
