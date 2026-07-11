# Qwen Deadline Extension Arbitration

Superseded status: the July 9, 2026 KST recheck confirmed that the Devpost public header and Devpost Official Rules section 1 now both show July 20, 2026, 2:00 PM Pacific Time. Keep this file as the historical July 8 conflict record and proof-quality guardrail; use `submission/qwen-deadline-extension-confirmation.md` for the current operator path.

Public sources rechecked: 2026-07-08 KST.

Visible Devpost header deadline: July 20, 2026, 2:00 PM PDT.

Visible header KST conversion: July 21, 2026, 6:00 AM KST.

Official Rules body deadline: July 9, 2026, 2:00 PM Pacific Time.

Official Rules body KST conversion: July 10, 2026, 6:00 AM KST.

Use this file before opening Devpost, Qwen Cloud, Alibaba Cloud, repository hosts, video hosts, deck hosts, or the final submission form.

## Original Source Conflict

- Devpost overview and page header now show `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- The same Devpost rules page header also shows `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- Official Rules section 1 still lists the Submission Period as May 26, 2026, 8:00 AM Pacific Time through July 9, 2026, 2:00 PM Pacific Time.
- Official Rules section 5 says draft submissions may be saved before the end of the Submission Period, and once the Submission Period ends the submission cannot be changed except under limited sponsor or Devpost permission.
- Public participant count visible during this recheck is about 7,044 to 7,045 participants.

## Practical Interpretation

Treat this as an extension shown by the Devpost platform but not yet reconciled in the legal rules text.

The entrant should not assume the July 20 header silently overrides the Official Rules until one of these is true:

1. The Official Rules body is updated to July 20.
2. A Devpost update or sponsor communication explicitly confirms the extension.
3. The logged-in submission form remains open after July 9, 2026, 2:00 PM Pacific Time and the entrant accepts the risk of relying on the platform state.

## Action Order

1. Run `python3 scripts/qwen-deadline-status.py --fail-after-deadline`.
2. Run `python3 scripts/qwen-deadline-status.py --deadline-source rules --fail-after-deadline`.
3. Run `python3 scripts/write-qwen-source-recheck-snapshot.py`.
4. If the rules-based check has not passed the July 9 cutoff, keep operating as final-window submit work.
5. If the rules-based cutoff has passed but the visible-header check remains active, open Devpost only as an entrant-owned decision and verify whether the submission form is still accepting changes.
6. Use the extra time only for proof quality: Qwen Cloud proof, Alibaba Cloud code-file proof, public repository completeness, public video clarity, and judge-accessible test instructions.
7. Do not add unsupported live-cloud claims just because the visible header shows more time.

## Claim Gate

| Area | Keep | Downgrade | Stop |
| --- | --- | --- | --- |
| Deadline | Say the visible Devpost header shows July 20 and the rules body still shows July 9 | Say deadline is unresolved if only one surface can be verified | Do not claim a clean extension without source proof |
| Qwen Cloud | Keep live Qwen usage only with redacted entrant-owned API proof | Use Qwen-ready connector wording | Stop before signup, voucher, Discord, API key, billing, or credentials |
| Alibaba Cloud | Keep deployment claim only with public repository code-file proof | Remove deployment wording | Stop before cloud deployment or publication commitments |
| Public assets | Paste only verified public URLs | Use local test-build instructions where accepted | Stop before publishing under entrant identity |
| Devpost | Submit only if all required proof is ready and entrant accepts rules/platform state | Save draft or prototype wording if available | Stop before rules acceptance or final `Submit project` |

## Paste-Ready Deadline Note

```text
Deadline note: The Devpost public header currently shows Jul 20, 2026 at 2:00 PM PDT, while the Official Rules body still lists the Submission Period ending Jul 9, 2026 at 2:00 PM Pacific Time. This packet treats the mismatch conservatively: all submission claims are locked to verified public proof, and any final reliance on the visible extension must be decided by the entrant inside Devpost.
```

## External Stop Lines

- Devpost: stop before login, `Join hackathon`, rules acceptance, or final `Submit project`.
- Qwen Cloud: stop before signup, voucher request, Discord join, API-key creation, billing, or private account data.
- Alibaba Cloud: stop before deployment, region selection, billing commitment, or public proof publication.
- Public hosts: stop before publishing repository, video, deck, blog, or working-project URLs under the entrant identity.
- Private data: never include API keys, account IDs, billing data, real customer data, tax data, eligibility documents, or personal sensitive information.

## GO / DOWNGRADE / STOP

GO - use the visible July 20 platform window only after the entrant verifies the logged-in Devpost form is open and all Qwen, Alibaba, public repository, public video, architecture, and working-project proofs are ready.

DOWNGRADE - use conservative prototype wording if the platform remains open but Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before account actions, publication actions, rules acceptance, or final Devpost `Submit project`.
