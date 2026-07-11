from __future__ import annotations

import json
from dataclasses import asdict, dataclass
from datetime import UTC, datetime
from pathlib import Path
from typing import Any

HIGH_RISK_TERMS = ("penalty", "unlimited", "indemnity", "guarantee", "custom integration")
AUTO_APPROVAL_LIMIT_USD = 100_000


@dataclass(frozen=True)
class CustomerRequest:
    customer: str
    channel: str
    deadline: str
    budget_usd: int
    request_text: str
    attachments: tuple[str, ...]


@dataclass(frozen=True)
class AgentStep:
    agent: str
    action: str
    inputs: tuple[str, ...]
    outputs: tuple[str, ...]
    human_gate: bool
    qwen_cloud_role: str


@dataclass(frozen=True)
class ProposalPacket:
    customer: str
    track: str
    requirements: tuple[str, ...]
    missing_info: tuple[str, ...]
    policy_flags: tuple[str, ...]
    quote_lines: tuple[str, ...]
    approval_questions: tuple[str, ...]
    agent_steps: tuple[AgentStep, ...]
    generated_at: str


def load_request(path: Path) -> CustomerRequest:
    payload = json.loads(path.read_text(encoding="utf-8"))
    return CustomerRequest(
        customer=str(payload["customer"]),
        channel=str(payload["channel"]),
        deadline=str(payload["deadline"]),
        budget_usd=int(payload["budget_usd"]),
        request_text=str(payload["request_text"]),
        attachments=tuple(str(item) for item in payload.get("attachments", [])),
    )


def _requirements(request: CustomerRequest) -> tuple[str, ...]:
    text = request.request_text.lower()
    requirements = ["single approval-ready proposal packet"]
    if "security" in text or "soc2" in text:
        requirements.append("security questionnaire response with SOC2 evidence mapping")
    if "pricing" in text or "quote" in text:
        requirements.append("line-item quote with assumptions and exclusions")
    if "timeline" in text or "launch" in text:
        requirements.append("delivery timeline with customer-side dependencies")
    if "integration" in text or "api" in text:
        requirements.append("integration scope and technical discovery checklist")
    return tuple(requirements)


def _missing_info(request: CustomerRequest) -> tuple[str, ...]:
    missing: list[str] = []
    if not request.attachments:
        missing.append("customer attachments or RFP documents")
    if request.budget_usd <= 0:
        missing.append("target budget or procurement range")
    if "users" not in request.request_text.lower():
        missing.append("expected user count")
    if "deadline" not in request.request_text.lower() and not request.deadline:
        missing.append("decision deadline")
    return tuple(missing)


def _policy_flags(request: CustomerRequest) -> tuple[str, ...]:
    text = request.request_text.lower()
    flags = [f"requires review for term: {term}" for term in HIGH_RISK_TERMS if term in text]
    if request.budget_usd > AUTO_APPROVAL_LIMIT_USD:
        flags.append("deal value exceeds automatic approval threshold")
    if "legal" in text:
        flags.append("legal review explicitly requested by customer")
    return tuple(flags)


def _quote_lines(request: CustomerRequest, requirements: tuple[str, ...]) -> tuple[str, ...]:
    base = max(request.budget_usd, 18_000)
    discovery = min(max(round(base * 0.12), 2_500), 15_000)
    implementation = min(max(round(base * 0.55), 9_000), 80_000)
    governance = min(max(round(base * 0.18), 3_000), 25_000)
    return (
        f"Discovery and proposal validation: ${discovery:,}",
        f"Implementation for {len(requirements)} requirement groups: ${implementation:,}",
        f"Governance, testing, and launch support: ${governance:,}",
    )


def build_packet(request: CustomerRequest) -> ProposalPacket:
    requirements = _requirements(request)
    missing_info = _missing_info(request)
    policy_flags = _policy_flags(request)
    quote_lines = _quote_lines(request, requirements)
    approval_questions = tuple(
        item
        for item in (
            "Can sales commit to the proposed pricing range?",
            "Can legal accept the flagged terms or provide fallback language?"
            if policy_flags
            else "",
            "Can delivery commit to the timeline after customer dependencies are confirmed?",
            "Should the proposal be sent now or held for missing information?"
            if missing_info
            else "",
        )
        if item
    )
    steps = (
        AgentStep(
            agent="intake",
            action="extract request facts and normalize attachments",
            inputs=(request.channel, "request_text", "attachments"),
            outputs=requirements,
            human_gate=False,
            qwen_cloud_role="Qwen long-context extraction",
        ),
        AgentStep(
            agent="research",
            action="summarize account context and technical assumptions",
            inputs=(request.customer, "public/customer-provided context"),
            outputs=("account assumptions", "technical discovery checklist"),
            human_gate=False,
            qwen_cloud_role="Qwen reasoning over retrieved context",
        ),
        AgentStep(
            agent="policy",
            action="check pricing, legal, delivery, and compliance constraints",
            inputs=("requirements", "policy library", "budget"),
            outputs=policy_flags or ("no high-risk policy flags detected",),
            human_gate=bool(policy_flags),
            qwen_cloud_role="Qwen policy comparison with cited snippets",
        ),
        AgentStep(
            agent="quote",
            action="draft proposal, quote lines, and assumptions",
            inputs=("requirements", "policy flags", "budget"),
            outputs=quote_lines,
            human_gate=False,
            qwen_cloud_role="Qwen structured proposal drafting",
        ),
        AgentStep(
            agent="approval",
            action="route risky commitments to human approvers",
            inputs=("quote", "policy flags", "missing info"),
            outputs=approval_questions,
            human_gate=True,
            qwen_cloud_role="Qwen approval memo generation",
        ),
    )
    return ProposalPacket(
        customer=request.customer,
        track="Track 4 Autopilot Agent with Track 3 Agent Society evidence",
        requirements=requirements,
        missing_info=missing_info,
        policy_flags=policy_flags,
        quote_lines=quote_lines,
        approval_questions=approval_questions,
        agent_steps=steps,
        generated_at=datetime.now(UTC).replace(microsecond=0).isoformat(),
    )


def packet_to_dict(packet: ProposalPacket, qwen_summary: str | None = None) -> dict[str, Any]:
    payload = asdict(packet)
    if qwen_summary is not None:
        payload["qwen_cloud_live_summary"] = qwen_summary
    return payload


def render_markdown(packet: ProposalPacket, qwen_summary: str | None = None) -> str:
    def bullets(items: tuple[str, ...]) -> str:
        return "\n".join(f"- {item}" for item in items) if items else "- None"

    steps = "\n".join(
        (
            f"### {step.agent.title()} Agent\n"
            f"- Action: {step.action}\n"
            f"- Qwen Cloud role: {step.qwen_cloud_role}\n"
            f"- Human gate: {'yes' if step.human_gate else 'no'}\n"
            f"- Outputs:\n{bullets(step.outputs)}"
        )
        for step in packet.agent_steps
    )
    qwen_section = (
        "\n## Qwen Cloud Live Summary\n\n"
        f"{qwen_summary}\n"
        if qwen_summary
        else ""
    )
    return f"""# BidDesk Autopilot Demo Packet

Generated: {packet.generated_at}
Customer: {packet.customer}
Track: {packet.track}

## Requirements

{bullets(packet.requirements)}

## Missing Information

{bullets(packet.missing_info)}

## Policy Flags

{bullets(packet.policy_flags)}

## Quote Draft

{bullets(packet.quote_lines)}

## Human Approval Questions

{bullets(packet.approval_questions)}

## Agent Workflow

{steps}
{qwen_section}
"""


def write_outputs(
    packet: ProposalPacket,
    markdown_path: Path,
    json_path: Path,
    qwen_summary: str | None = None,
) -> None:
    markdown_path.parent.mkdir(parents=True, exist_ok=True)
    json_path.parent.mkdir(parents=True, exist_ok=True)
    markdown_path.write_text(render_markdown(packet, qwen_summary), encoding="utf-8")
    json_payload = json.dumps(packet_to_dict(packet, qwen_summary), indent=2)
    json_path.write_text(json_payload, encoding="utf-8")
