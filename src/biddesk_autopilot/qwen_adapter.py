from __future__ import annotations

import json
import os
import urllib.error
import urllib.request
from dataclasses import dataclass
from urllib.parse import urlparse

from biddesk_autopilot.core import ProposalPacket, packet_to_dict

DEFAULT_BASE_URL = "https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
DEFAULT_MODEL = "qwen-plus"


@dataclass(frozen=True)
class QwenCloudConfig:
    base_url: str
    model: str
    api_key_env: str | None

    @property
    def configured(self) -> bool:
        return self.api_key_env is not None


def load_qwen_config() -> QwenCloudConfig:
    api_key_env = next(
        (name for name in ("QWEN_API_KEY", "DASHSCOPE_API_KEY") if os.getenv(name)),
        None,
    )
    return QwenCloudConfig(
        base_url=os.getenv("QWEN_BASE_URL", DEFAULT_BASE_URL).rstrip("/"),
        model=os.getenv("QWEN_MODEL", DEFAULT_MODEL),
        api_key_env=api_key_env,
    )


def connector_status(config: QwenCloudConfig | None = None) -> str:
    resolved = config or load_qwen_config()
    state = "configured" if resolved.configured else "not configured"
    key_source = resolved.api_key_env or "set QWEN_API_KEY or DASHSCOPE_API_KEY"
    return "\n".join(
        (
            f"Qwen connector: {state}",
            f"Base URL: {resolved.base_url}",
            f"Model: {resolved.model}",
            f"API key source: {key_source}",
        )
    )


def build_live_summary(packet: ProposalPacket, timeout_seconds: int = 30) -> str:
    config = load_qwen_config()
    if config.api_key_env is None:
        message = "Set QWEN_API_KEY or DASHSCOPE_API_KEY before using --use-qwen."
        raise RuntimeError(message)

    api_key = os.environ[config.api_key_env]
    base_url = _validated_https_base_url(config.base_url)
    request = urllib.request.Request(  # noqa: S310
        f"{base_url}/chat/completions",
        data=json.dumps(_chat_payload(config.model, packet)).encode("utf-8"),
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
        },
        method="POST",
    )
    try:
        with urllib.request.urlopen(request, timeout=timeout_seconds) as response:  # noqa: S310
            payload = json.loads(response.read().decode("utf-8"))
    except urllib.error.HTTPError as exc:
        detail = exc.read().decode("utf-8", errors="replace")
        message = f"Qwen Cloud request failed with HTTP {exc.code}: {detail}"
        raise RuntimeError(message) from exc
    except urllib.error.URLError as exc:
        message = f"Qwen Cloud request failed: {exc.reason}"
        raise RuntimeError(message) from exc

    try:
        content = payload["choices"][0]["message"]["content"]
    except (KeyError, IndexError, TypeError) as exc:
        message = "Qwen Cloud response did not include choices[0].message.content."
        raise RuntimeError(message) from exc
    return str(content).strip()


def _validated_https_base_url(base_url: str) -> str:
    parsed = urlparse(base_url)
    if parsed.scheme != "https" or not parsed.netloc:
        message = "QWEN_BASE_URL must be an HTTPS URL."
        raise RuntimeError(message)
    return base_url.rstrip("/")


def _chat_payload(model: str, packet: ProposalPacket) -> dict[str, object]:
    return {
        "model": model,
        "messages": [
            {
                "role": "system",
                "content": (
                    "You are validating a hackathon demo packet. Use only facts present "
                    "in the supplied JSON. Never invent evidence, standards mappings, "
                    "customer systems, dates, credentials, or commitments. Mark missing "
                    "facts as unverified. Return a complete summary under 220 words with "
                    "three headings: Verified Output, Human Approval Gates, Next Actions."
                ),
            },
            {
                "role": "user",
                "content": json.dumps(packet_to_dict(packet), ensure_ascii=False),
            },
        ],
        "temperature": 0.2,
        "max_tokens": 600,
    }
