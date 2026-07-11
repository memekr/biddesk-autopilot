# Qwen Presentation Deck Outline

Purpose: give the entrant a ready-to-build slide source for the Qwen Cloud Devpost deck requirement.

Public sources rechecked: 2026-06-30 KST.

Deadline: July 9, 2026, 2:00 PM PDT, which is July 10, 2026, 6:00 AM KST.

## Slide 1 - BidDesk Autopilot

One-line pitch: Qwen-powered proposal operations that turns messy RFPs and customer emails into quote-ready, policy-aware proposal packets with human approval gates.

Visual: product title, Track 4 Autopilot Agent, secondary Track 3 Agent Society evidence.

Speaker note: This is a revenue-operations autopilot for teams that need speed without losing control of pricing, legal, delivery, or customer commitments.

## Slide 2 - Problem

Revenue teams lose time and accuracy when proposal work is spread across inbox threads, RFP attachments, pricing rules, legal policy, and manual approvals.

Key pain points:

- Requirements are buried in unstructured customer text.
- Pricing and delivery exceptions are easy to miss.
- Draft proposals often move faster than governance.
- Audit trails are weak when work happens across tools.

## Slide 3 - Solution

BidDesk Autopilot coordinates specialized agents that create a proposal packet, quote draft, risk memo, and approval queue from one messy request.

Agent flow:

- Intake Agent extracts requirements and missing facts.
- Research Agent records account and technical assumptions.
- Policy Agent checks pricing, legal, delivery, and compliance constraints.
- Quote Agent drafts line items and proposal language.
- Approval Agent blocks risky commitments until a human signs off.

## Slide 4 - Qwen Cloud Architecture

Use `submission/qwen-architecture-diagram.md` as the source diagram.

Required live claim boundary:

- Qwen model calls must run through Qwen Cloud.
- Backend proof must come from Alibaba Cloud infrastructure.
- The local deterministic prototype is only offline preparation until live API and deployment proof exist.

Speaker note: The project is designed around the OpenAI-compatible Qwen Cloud API boundary, so the same structured agent workflow can run locally for dry runs and on Alibaba Cloud for judging proof.

## Slide 5 - Demo Walkthrough

Demo sequence:

1. Start from `reports/sample-request.json`.
2. Run the CLI with `--qwen-status`.
3. Show generated Markdown and JSON proposal packets.
4. Highlight extracted requirements, policy flags, quote lines, and approval questions.
5. If live proof exists, rerun with `--use-qwen` and show `Qwen Cloud Live Summary`.

Do not show API keys, billing pages, private account identifiers, or customer-sensitive data.

## Slide 6 - Governance And Human Control

BidDesk Autopilot does not auto-send customer commitments.

Control points:

- risky pricing terms route to approval,
- legal and penalty clauses route to approval,
- delivery assumptions are explicit,
- every agent step is recorded in the JSON packet,
- final copy must match the evidence captured in the demo.

## Slide 7 - Impact

Expected business value:

- faster first proposal drafts,
- fewer missed compliance and pricing constraints,
- clearer human approval handoffs,
- reusable audit trail for sales, legal, and operations,
- practical path to production because the workflow mirrors real proposal operations.

Use only entrant-verified metrics. If no real metrics exist, keep this slide qualitative.

## Slide 8 - Submission Proof Checklist

Before publishing the deck or pasting Devpost fields, verify:

- public GitHub repository URL,
- public demo video less than 3 minutes,
- Alibaba Cloud deployment proof,
- Qwen Cloud API proof with secrets redacted,
- architecture diagram,
- project description,
- Devpost rules accepted only by the entrant.

GO - include live Qwen Cloud and Alibaba Cloud deployment claims only after proof is captured.

DOWNGRADE - use prototype wording if Qwen Cloud API or Alibaba Cloud proof is incomplete.

STOP - external commitment required before account signup, voucher claim, Discord join, publication, rules acceptance, or final submit.
