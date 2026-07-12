from __future__ import annotations

import json
import os
from typing import cast

from biddesk_autopilot.core import CustomerRequest, build_packet, packet_to_dict

HANDLER_NAME = "biddesk_autopilot.alibaba_function_compute.handler"
PROVIDER = "Alibaba Cloud Function Compute"
SAFE_FC_ENV_VARS = (
    "FC_FUNCTION_NAME",
    "FC_FUNCTION_HANDLER",
    "FC_FUNCTION_MEMORY_SIZE",
    "FC_REGION",
    "FC_INSTANCE_ID",
    "FC_FUNCTION_VERSION",
    "FC_VER_ID",
)


def handler(event: bytes | bytearray | str, context: object) -> str:
    """Alibaba Cloud Function Compute event handler.

    The handler accepts a BidDesk request JSON object directly or inside an HTTP
    style `body` field, then returns a proposal packet plus sanitized runtime
    proof. It intentionally records only non-secret FC metadata.
    """
    body = build_response_body(event, context)
    return json.dumps(body, ensure_ascii=False, sort_keys=True)


def build_response_body(event: bytes | bytearray | str, context: object) -> dict[str, object]:
    payload = _decode_event(event)
    request = _request_from_payload(payload)
    packet = build_packet(request)
    response: dict[str, object] = packet_to_dict(packet)
    response["alibaba_cloud_runtime"] = _runtime_proof(context)
    return response


def _decode_event(event: bytes | bytearray | str) -> dict[str, object]:
    raw = event.decode("utf-8") if isinstance(event, (bytes, bytearray)) else event
    payload = cast("object", json.loads(raw))
    if not isinstance(payload, dict):
        message = "Function Compute event must decode to a JSON object."
        raise TypeError(message)

    body = payload.get("body")
    if isinstance(body, str):
        nested = cast("object", json.loads(body))
        if not isinstance(nested, dict):
            message = "Function Compute body must decode to a JSON object."
            raise TypeError(message)
        return cast("dict[str, object]", nested)
    if isinstance(body, dict):
        return cast("dict[str, object]", body)
    return cast("dict[str, object]", payload)


def _request_from_payload(payload: dict[str, object]) -> CustomerRequest:
    try:
        customer = str(payload["customer"])
        channel = str(payload["channel"])
        deadline = str(payload["deadline"])
        budget_usd = _required_int(payload, "budget_usd")
        request_text = str(payload["request_text"])
    except KeyError as exc:
        message = f"Missing required BidDesk request field: {exc.args[0]}"
        raise ValueError(message) from exc

    attachments = _optional_text_tuple(payload, "attachments")
    return CustomerRequest(
        customer=customer,
        channel=channel,
        deadline=deadline,
        budget_usd=budget_usd,
        request_text=request_text,
        attachments=attachments,
    )


def _required_int(payload: dict[str, object], key: str) -> int:
    value = payload[key]
    if isinstance(value, int):
        return value
    if isinstance(value, str):
        return int(value)
    message = f"BidDesk request field must be an integer-compatible value: {key}"
    raise TypeError(message)


def _optional_text_tuple(payload: dict[str, object], key: str) -> tuple[str, ...]:
    value = payload.get(key, ())
    if value is None:
        return ()
    if isinstance(value, (list, tuple)):
        return tuple(str(item) for item in value)
    message = f"BidDesk request field must be a JSON array when provided: {key}"
    raise TypeError(message)


def _runtime_proof(context: object) -> dict[str, object]:
    region = _context_attr(context, "region") or os.getenv("FC_REGION") or "unverified"
    function_name = os.getenv("FC_FUNCTION_NAME") or _context_attr(context, "function_name")
    credentials = getattr(context, "credentials", None)
    has_role_credentials = credentials is not None or all(
        os.getenv(name)
        for name in (
            "ALIBABA_CLOUD_ACCESS_KEY_ID",
            "ALIBABA_CLOUD_ACCESS_KEY_SECRET",
            "ALIBABA_CLOUD_SECURITY_TOKEN",
        )
    )
    return {
        "provider": PROVIDER,
        "handler": HANDLER_NAME,
        "region": region,
        "function_name": function_name or "unverified",
        "has_function_compute_env": any(os.getenv(name) for name in SAFE_FC_ENV_VARS),
        "observed_fc_env_vars": tuple(name for name in SAFE_FC_ENV_VARS if os.getenv(name)),
        "has_execution_role_credentials": has_role_credentials,
        "secret_policy": "credential values are never returned, logged, or stored by this handler",
    }


def _context_attr(context: object, name: str) -> str | None:
    value = getattr(context, name, None)
    return str(value) if value is not None else None
