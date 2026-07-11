# BidDesk Autopilot Demo Packet

Generated: 2026-07-11T01:38:40+00:00
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
A single approval-ready proposal packet is generated, including: SOC2-mapped security questionnaire response; line-item quote totaling $72,250 ($10,200 + $46,750 + $15,300); delivery timeline noting customer-side dependencies; integration scope; and technical discovery checklist. All required outputs from the intake and quote agents are confirmed present. No missing info is reported.

**Human Approval Gates**  
Two human gates are triggered:  
- *Policy agent*: Requires review of “penalty” and “custom integration” terms, plus explicit legal review requested by Northstar Facilities.  
- *Approval agent*: Routes three commitment questions to humans: sales pricing acceptance, legal fallback language for flagged terms, and delivery’s timeline confirmation post-customer dependency validation.

**Next Actions**  
Secure approvals for: (1) sales sign-off on $72,250 quote, (2) legal resolution of penalty/custom integration terms, and (3) delivery confirmation of timeline once Northstar Facilities validates dependencies. No further agent automation is pending—next steps are fully human-led.

