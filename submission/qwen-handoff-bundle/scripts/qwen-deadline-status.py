from __future__ import annotations

import argparse
from datetime import UTC, datetime
from zoneinfo import ZoneInfo

PACIFIC = ZoneInfo("America/Los_Angeles")
KST = ZoneInfo("Asia/Seoul")
RULES_DEADLINE = datetime(2026, 7, 20, 14, 0, tzinfo=PACIFIC)
VISIBLE_HEADER_DEADLINE = datetime(2026, 7, 20, 14, 0, tzinfo=PACIFIC)


def format_delta(seconds: int) -> str:
    if seconds <= 0:
        return "0d 0h 0m"
    days, remainder = divmod(seconds, 86_400)
    hours, remainder = divmod(remainder, 3_600)
    minutes, _ = divmod(remainder, 60)
    return f"{days}d {hours}h {minutes}m"


def main() -> None:
    parser = argparse.ArgumentParser(description="Print Qwen hackathon deadline status.")
    parser.add_argument(
        "--deadline-source",
        choices=("visible-header", "rules"),
        default="visible-header",
        help=(
            "Deadline to use for the pass/fail phase. The public Devpost header "
            "and official rules body currently both show Jul 20."
        ),
    )
    parser.add_argument("--fail-after-deadline", action="store_true")
    args = parser.parse_args()

    now_utc = datetime.now(UTC).replace(microsecond=0)
    deadline = (
        VISIBLE_HEADER_DEADLINE
        if args.deadline_source == "visible-header"
        else RULES_DEADLINE
    )
    deadline_utc = deadline.astimezone(UTC)
    remaining_seconds = int((deadline_utc - now_utc).total_seconds())
    phase = "active submission window" if remaining_seconds > 0 else "deadline passed"

    print(f"Now UTC: {now_utc.isoformat()}")
    print(f"Now KST: {now_utc.astimezone(KST).isoformat()}")
    print(f"Visible header deadline PDT: {VISIBLE_HEADER_DEADLINE.isoformat()}")
    print(f"Visible header deadline KST: {VISIBLE_HEADER_DEADLINE.astimezone(KST).isoformat()}")
    print(f"Official rules body deadline PDT: {RULES_DEADLINE.isoformat()}")
    print(f"Official rules body deadline KST: {RULES_DEADLINE.astimezone(KST).isoformat()}")
    print("Deadline alignment: Devpost header and Official Rules body both show Jul 20.")
    print(f"Selected deadline source: {args.deadline_source}")
    print(f"Selected deadline PDT: {deadline.isoformat()}")
    print(f"Deadline UTC: {deadline_utc.isoformat()}")
    print(f"Selected deadline KST: {deadline_utc.astimezone(KST).isoformat()}")
    print(f"Remaining: {format_delta(remaining_seconds)}")
    print(f"Phase: {phase}")

    if args.fail_after_deadline and remaining_seconds <= 0:
        message = f"Qwen Cloud hackathon deadline has passed for {args.deadline_source}."
        raise SystemExit(message)


if __name__ == "__main__":
    main()
