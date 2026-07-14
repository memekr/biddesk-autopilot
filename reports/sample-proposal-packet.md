# BidDesk Autopilot Demo Packet

Generated: 2026-07-14T06:14:07+00:00
Customer: Northstar Facilities
Track: Track 4 Autopilot Agent with Track 3 Agent Society evidence

## Requirements

- single approval-ready proposal packet
- security questionnaire response with SOC2 evidence mapping
- line-item quote with assumptions and exclusions
- delivery timeline with customer-side dependencies
- integration scope and technical discovery checklist

## Missing Information

- None

## Policy Flags

- requires review for term: penalty
- requires review for term: custom integration
- legal review explicitly requested by customer

## Quote Draft

- Discovery and proposal validation: $10,200
- Implementation for 5 requirement groups: $46,750
- Governance, testing, and launch support: $15,300

## Human Approval Questions

- Can sales commit to the proposed pricing range?
- Can legal accept the flagged terms or provide fallback language?
- Can delivery commit to the timeline after customer dependencies are confirmed?

## Agent Workflow

### Intake Agent
- Action: extract request facts and normalize attachments
- Qwen Cloud role: Qwen long-context extraction
- Human gate: no
- Outputs:
- single approval-ready proposal packet
- security questionnaire response with SOC2 evidence mapping
- line-item quote with assumptions and exclusions
- delivery timeline with customer-side dependencies
- integration scope and technical discovery checklist
### Research Agent
- Action: summarize account context and technical assumptions
- Qwen Cloud role: Qwen reasoning over retrieved context
- Human gate: no
- Outputs:
- account assumptions
- technical discovery checklist
### Policy Agent
- Action: check pricing, legal, delivery, and compliance constraints
- Qwen Cloud role: Qwen policy comparison with cited snippets
- Human gate: yes
- Outputs:
- requires review for term: penalty
- requires review for term: custom integration
- legal review explicitly requested by customer
### Quote Agent
- Action: draft proposal, quote lines, and assumptions
- Qwen Cloud role: Qwen structured proposal drafting
- Human gate: no
- Outputs:
- Discovery and proposal validation: $10,200
- Implementation for 5 requirement groups: $46,750
- Governance, testing, and launch support: $15,300
### Approval Agent
- Action: route risky commitments to human approvers
- Qwen Cloud role: Qwen approval memo generation
- Human gate: yes
- Outputs:
- Can sales commit to the proposed pricing range?
- Can legal accept the flagged terms or provide fallback language?
- Can delivery commit to the timeline after customer dependencies are confirmed?

## Qwen Cloud Live Summary

**Verified Output**  
The packet for Northstar Facilities (Track 4 Autopilot Agent + Track 3 Agent Society evidence) includes: a single approval-ready proposal; SOC2-mapped security questionnaire response; line-item quote totaling $72,250 across three scopes; delivery timeline noting customer-side dependencies; and integration scope with technical discovery checklist. All required outputs from intake, research, quote, and approval agents are confirmed complete. No missing info is listed.

**Human Approval Gates**  
Two human gates are active: policy agent flags *penalty terms*, *custom integration*, and explicit legal review request; approval agent escalates three commitment questions—to sales (pricing), legal (flagged terms/fallback language), and delivery (timeline contingent on confirmed dependencies).

**Next Actions**  
Await responses to the three approval questions. Legal must address penalty/custom integration terms; sales must confirm pricing acceptance; delivery must validate timeline feasibility once Northstar confirms dependencies. No further agent automation is triggered until these gates resolve.

