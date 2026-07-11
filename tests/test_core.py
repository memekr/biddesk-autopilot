from __future__ import annotations

import json
from pathlib import Path
from typing import TYPE_CHECKING, cast

from biddesk_autopilot.core import build_packet, load_request, packet_to_dict, render_markdown
from biddesk_autopilot.qwen_adapter import (
    QwenCloudConfig,
    _chat_payload,
    connector_status,
    load_qwen_config,
)

if TYPE_CHECKING:
    import pytest

ROOT = Path(__file__).resolve().parents[1]
SAMPLE = ROOT / "reports" / "sample-request.json"


def test_build_packet_routes_policy_flags_to_human_gate() -> None:
    packet = build_packet(load_request(SAMPLE))

    assert packet.customer == "Northstar Facilities"
    assert packet.policy_flags
    assert packet.agent_steps[-1].human_gate is True
    assert "Track 4" in packet.track


def test_packet_is_json_serializable() -> None:
    packet = build_packet(load_request(SAMPLE))
    payload = packet_to_dict(packet)

    assert payload["customer"] == "Northstar Facilities"
    assert json.loads(json.dumps(payload))["agent_steps"]


def test_render_markdown_contains_qwen_cloud_roles() -> None:
    packet = build_packet(load_request(SAMPLE))
    rendered = render_markdown(packet)

    assert "Qwen Cloud role" in rendered
    assert "Policy Agent" in rendered
    assert "Human Approval Questions" in rendered


def test_render_markdown_can_include_qwen_live_summary() -> None:
    packet = build_packet(load_request(SAMPLE))
    rendered = render_markdown(packet, "Live model summary")
    payload = packet_to_dict(packet, "Live model summary")

    assert "Qwen Cloud Live Summary" in rendered
    assert payload["qwen_cloud_live_summary"] == "Live model summary"


def test_qwen_connector_status_does_not_require_secret() -> None:
    status = connector_status(
        QwenCloudConfig(
            base_url="https://dashscope-intl.aliyuncs.com/compatible-mode/v1",
            model="qwen-plus",
            api_key_env=None,
        )
    )

    assert "not configured" in status
    assert "QWEN_API_KEY" in status
    assert "sk-" not in status


def test_qwen_config_prefers_qwen_api_key(monkeypatch: pytest.MonkeyPatch) -> None:
    monkeypatch.setenv("QWEN_API_KEY", "secret")
    monkeypatch.setenv("DASHSCOPE_API_KEY", "fallback")
    monkeypatch.setenv("QWEN_MODEL", "qwen-test")

    config = load_qwen_config()

    assert config.api_key_env == "QWEN_API_KEY"
    assert config.model == "qwen-test"


def test_qwen_prompt_requires_grounded_complete_output() -> None:
    packet = build_packet(load_request(SAMPLE))

    payload = _chat_payload("qwen-plus", packet)
    messages = payload["messages"]
    assert isinstance(messages, list)
    assert isinstance(messages[0], dict)
    message = cast("dict[str, object]", messages[0])
    system_prompt = message["content"]
    assert isinstance(system_prompt, str)

    assert "Use only facts present" in system_prompt
    assert "Never invent evidence" in system_prompt
    assert "under 220 words" in system_prompt
