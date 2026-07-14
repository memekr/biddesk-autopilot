from __future__ import annotations

from datetime import UTC, datetime
from pathlib import Path
from zoneinfo import ZoneInfo

PACIFIC = ZoneInfo("America/Los_Angeles")
KST = ZoneInfo("Asia/Seoul")
RULES_DEADLINE = datetime(2026, 7, 20, 14, 0, tzinfo=PACIFIC)
VISIBLE_HEADER_DEADLINE = datetime(2026, 7, 20, 14, 0, tzinfo=PACIFIC)
ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "submission" / "qwen-source-recheck-snapshot.md"


def format_delta(seconds: int) -> str:
    if seconds <= 0:
        return "0d 0h 0m"
    days, remainder = divmod(seconds, 86_400)
    hours, remainder = divmod(remainder, 3_600)
    minutes, _ = divmod(remainder, 60)
    return f"{days}d {hours}h {minutes}m"


def main() -> None:
    now_utc = datetime.now(UTC).replace(microsecond=0)
    deadline_utc = VISIBLE_HEADER_DEADLINE.astimezone(UTC)
    remaining_seconds = int((deadline_utc - now_utc).total_seconds())
    phase = "active submission window" if remaining_seconds > 0 else "deadline passed"

    facts = [
        "Devpost deadline alignment reconfirmed during the July 14, 2026 KST "
        "recheck: the Devpost overview header, rules page header, and Official "
        "Rules section 1 show July 20, 2026, 2:00 PM Pacific Time, which is "
        "July 21, 2026, 6:00 AM KST.",
        "The July 8 deadline-extension arbitration is now historical for the "
        "Devpost header-versus-rules conflict, but it remains useful as a "
        "proof-quality guardrail.",
        "The Qwen Cloud challenge page says the submission deadline was extended "
        "to July 20 and marks the build period as May 26 to July 19.",
        "Devpost resources still say the last day to apply for the Qwen Cloud "
        "voucher is July 9 at 10AM PST; treat voucher, API-key, and credit setup "
        "as entrant-owned account actions.",
        "The Qwen Cloud challenge page separately says coupon redemption remained "
        "July 9 at 11:59 PM GMT+7 and late coupon requests will not be accepted.",
        "The Qwen Cloud challenge page technical requirements say projects must "
        "use the Qwen Cloud API and be deployed on Alibaba Cloud infrastructure.",
        "Devpost rules require a public code repository with visible open-source "
        "license, source, assets, and setup instructions.",
        "Devpost rules require proof that the backend runs on Alibaba Cloud.",
        "Devpost rules specify Alibaba Cloud deployment proof as a link to a "
        "code file in the public repository that demonstrates use of Alibaba "
        "Cloud services and APIs.",
        "Devpost rules require an architecture diagram, text description, "
        "track selection, and public demo video.",
        "The Devpost overview currently says the public video can be on YouTube, "
        "Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, "
        "or Youku. Prefer the Official Rules list unless the live form explicitly "
        "accepts another host.",
        "Devpost rules set the strict demo-video gate at less than 3 minutes.",
        "Devpost rules require access to a working project for judging and testing "
        "through a website, functioning demo, or test build.",
        "Devpost resources route entrants through Devpost registration, Qwen Cloud "
        "signup, hackathon credits, Discord, first API call, model selection, "
        "and API-key documentation.",
        "Devpost resources list the OpenAI-compatible API base URL as "
        "`https://dashscope-intl.aliyuncs.com/compatible-mode/v1`.",
        "Public judging criteria weight Technical Depth & Engineering 30%, "
        "Innovation & AI Creativity 30%, Problem Value & Impact 25%, "
        "and Presentation & Documentation 15%.",
        "Public Devpost surfaces visible during the July 14, 2026 KST recheck "
        "show about 7,826 participants, so final form values should make "
        "track fit, proof, and business value obvious without judge inference.",
        "A public Devpost update visible during the July 11, 2026 KST recheck "
        "emphasizes that projects must prove they ran on Alibaba Cloud and states "
        "that no proof means not eligible.",
        "Public discussion topics visible during the July 11, 2026 KST source "
        "recheck still show account-region, credit, security-verification, "
        "Alibaba Cloud, and non-Qwen-provider risk.",
        "The public static demo URL `https://memekr.github.io/biddesk-autopilot/` "
        "is the current judge-facing working-project URL for the synthetic workflow "
        "and test-build path; it is not Alibaba Cloud deployment proof.",
        "The repository now includes `src/biddesk_autopilot/alibaba_function_compute.py` "
        "as the Alibaba Cloud Function Compute handler code-file candidate; it "
        "is not live deployment proof until a Function Compute deployment is "
        "completed and verified under the entrant account.",
        "GitHub Pages was enabled from `main` `/docs` on July 12, 2026 KST and "
        "returned HTTP 200 for the static demo page during the public smoke test.",
        "The official public YouTube demo video is available at "
        "`https://youtu.be/mEV2CP06JQo`; YouTube Studio showed runtime `1:46`, "
        "public visibility, and no copyright issues found, and public oEmbed "
        "returned HTTP 200. The validated GitHub Pages MP4 remains supplemental "
        "preview evidence.",
        "The Qwen Cloud challenge page still asks for a presentation PPT; "
        "`submission/BidDesk-Autopilot-Qwen-presentation.pptx` and "
        "`docs/qwen-presentation.html` now provide the public deck asset without "
        "claiming live Alibaba Cloud deployment.",
    ]
    fact_lines = "\n".join(f"- {fact}" for fact in facts)
    body = f"""# Qwen Source Recheck Snapshot

Generated UTC: {now_utc.isoformat()}

Generated KST: {now_utc.astimezone(KST).isoformat()}

Visible header deadline PDT: {VISIBLE_HEADER_DEADLINE.isoformat()}

Visible header deadline UTC: {deadline_utc.isoformat()}

Visible header deadline KST: {deadline_utc.astimezone(KST).isoformat()}

Official rules body deadline PDT: {RULES_DEADLINE.isoformat()}

Official rules body deadline KST: {RULES_DEADLINE.astimezone(KST).isoformat()}

Remaining: {format_delta(remaining_seconds)}

Phase: {phase}

## Public Sources Rechecked

- Devpost overview: https://qwencloud-hackathon.devpost.com/
- Devpost official rules: https://qwencloud-hackathon.devpost.com/rules
- Devpost resources: https://qwencloud-hackathon.devpost.com/resources
- Qwen Cloud challenge page: https://www.qwencloud.com/challenge/hackathon

## Current Submission Facts

{fact_lines}

## Operator Decision

GO - continue live Qwen submission only if public repository, public video, Qwen Cloud proof,
Alibaba Cloud deployment proof, architecture diagram, and working-project access are verified.

DOWNGRADE - use Qwen-ready local prototype wording if public assets exist but Qwen Cloud or
Alibaba Cloud proof is missing.

STOP - external commitment required before Devpost login, account signup, credit request,
Discord join, API key creation, cloud deployment, rules acceptance, or final Devpost
`Submit project`.
"""
    OUT.write_text(body, encoding="utf-8")
    print(f"Qwen source recheck snapshot: {OUT}")


if __name__ == "__main__":
    main()
