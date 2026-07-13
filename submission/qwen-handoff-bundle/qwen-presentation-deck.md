# Qwen Presentation Deck Asset

Use this after `submission/qwen-presentation-deck-outline.md` and before
`submission/qwen-public-asset-ledger.md`, `submission/qwen-public-url-smoke-test.md`,
or Devpost field paste. It records the actual public deck asset created from the outline.

## Event URL and Source Snapshot

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon
- Rechecked: July 14, 2026 KST.
- Current source state: Devpost overview and rules still show the July 20, 2026,
  2:00 PM PDT deadline; public Devpost surfaces show about 7,804 participants.
- Source conflict handled: Devpost rules use a less-than-3-minute public video gate
  and list YouTube, Vimeo, or Youku, while the Qwen challenge page also asks for a
  presentation PPT. This deck fills that presentation asset without weakening the
  stricter Devpost rules boundary.

## Public Deck Assets

- PPTX file: `submission/BidDesk-Autopilot-Qwen-presentation.pptx`
- Public PPTX URL target: https://github.com/memekr/biddesk-autopilot/blob/main/submission/BidDesk-Autopilot-Qwen-presentation.pptx
- Public preview URL target: https://memekr.github.io/biddesk-autopilot/qwen-presentation.html
- Preview source: `docs/qwen-presentation.html`
- SHA-256: `92ab617c0ba79597b2d1ea9edfa0665c609fbedda5b123b8238a810e2efe4e43`
- Slide count: 8.

## Deck Narrative

By the end, judges should understand that BidDesk Autopilot is a practical
proposal-operations agent system because it converts messy RFP/email input into
proposal packets, quote drafts, policy flags, and approval questions while keeping
live Qwen and Alibaba Cloud claims tied to evidence.

Slides:

1. BidDesk Autopilot and proof stack.
2. Proposal teams need speed without losing control.
3. Five-agent approval-ready workflow.
4. Architecture and live-proof boundaries.
5. Synthetic-data demo path.
6. Governance and human approval gates.
7. Judging rubric mapping.
8. Ready assets and remaining external blockers.

## Claim Boundary

GO - use the public deck and preview URL as presentation evidence after the public
repository push and private-browser checks pass.

DOWNGRADE - use the deck with prototype wording if the official video-host URL or live
Alibaba Cloud deployment proof remains missing.

STOP - do not use the deck to claim live Alibaba Cloud deployment; the deck explicitly
labels the Function Compute handler as a code-file candidate and deployment-pending.

## Validation

Passed on July 14, 2026 KST:

```bash
shasum -a 256 submission/BidDesk-Autopilot-Qwen-presentation.pptx
```

Observed:

- PPTX export succeeded through the local artifact-tool presentation workflow.
- Artifact-tool PNG preview was inspected manually for title, architecture, scoring,
  and final blocker slides.
- Coordinate check passed for 120 boxes across 8 slides using the transient
  artifact-tool inspect NDJSON generated during export.
- `render_slides.py` and `slides_test.py` could not run because this local Python
  environment is missing `pdf2image`; artifact-tool PNG previews and layout JSON were
  used as the fallback render/overflow verification path.
