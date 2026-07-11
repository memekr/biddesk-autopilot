from __future__ import annotations

import argparse
from pathlib import Path

from biddesk_autopilot.core import build_packet, load_request, write_outputs
from biddesk_autopilot.qwen_adapter import build_live_summary, connector_status


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Generate a Qwen-ready multi-agent proposal packet."
    )
    parser.add_argument("request_json", type=Path)
    parser.add_argument("--out", type=Path, default=Path("reports/sample-proposal-packet.md"))
    parser.add_argument("--json", type=Path, default=Path("reports/sample-proposal-packet.json"))
    parser.add_argument(
        "--qwen-status",
        action="store_true",
        help="Print Qwen Cloud connector configuration without making a network request.",
    )
    parser.add_argument(
        "--use-qwen",
        action="store_true",
        help="Call Qwen Cloud and include the live summary in the generated packet.",
    )
    return parser


def main() -> None:
    args = build_parser().parse_args()
    packet = build_packet(load_request(args.request_json))
    if args.qwen_status:
        print(connector_status())
    qwen_summary = build_live_summary(packet) if args.use_qwen else None
    write_outputs(packet, args.out, args.json, qwen_summary)
    print(f"Wrote {args.out}")
    print(f"Wrote {args.json}")
