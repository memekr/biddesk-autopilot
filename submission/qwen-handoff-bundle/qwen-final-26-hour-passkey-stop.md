# Qwen Final 26-Hour Passkey Stop

Rechecked: 2026-07-20 03:25 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

UTC conversion: July 20, 2026, 9:00 PM UTC.

KST conversion: July 21, 2026, 6:00 AM KST.

Remaining at recheck: about 1 day 2 hours 34 minutes.

Purpose: record the last automation-owned browser path before the Qwen
deadline. Chrome remains unavailable because the app is closed, and the
in-app Devpost signup path now stops at Google passkey verification before
Devpost event registration or project creation can continue.

## Why Qwen Still Gets This Slot

- Qwen Cloud is still the nearest active high-value deadline in the workspace.
- The public repository, static working-project demo, official YouTube video,
  deck preview, committed PPTX, architecture, redacted Qwen evidence, local
  validation path, and Alibaba Function Compute handler candidate are already
  judge-facing.
- Devpost still shows the July 20, 2026, 2:00 PM PDT deadline and the live
  participant counter is still moving.
- Final live eligibility still depends on external controls: Devpost login or
  registration, project-creation CAPTCHA, Alibaba Cloud phone verification,
  verified zero-cost Function Compute deployment proof, final preview/rules
  review, and final submit.
- The only automation-complete path remains a truthful prototype submission
  unless the entrant completes the passkey/CAPTCHA gates and accepts the
  Function Compute code-file candidate or captures live Alibaba deployment
  proof.

## Current Public And Browser Source Snapshot

- Public Devpost search and event surfaces still report
  `Deadline: Jul 20, 2026 @ 2:00pm PDT`.
- The in-app Devpost manage-submissions page showed the local KST deadline as
  `2026-07-21 @ 6:00am` and `1 more day to deadline`.
- The same in-app page showed `Participants (8376)`. Treat this as a live
  counter, not a locked final claim.
- The manage-submissions page was not logged in to Devpost and showed
  `Register for this hackathon` plus `Join hackathon`.
- The Devpost signup page offered GitHub, Facebook, Google, and LinkedIn sign
  up. The optional weekly newsletter checkbox was initially checked and was
  unchecked before the Google OAuth path was started.
- Google OAuth accepted the authorized entrant email and then moved to a
  passkey verification screen. The screen said the login would be completed
  using a passkey and exposed an `Other ways` control.

## Browser Gate State

Chrome diagnostics during this run:

- Google Chrome installed: yes, version 150.0.7871.125.
- Google Chrome running: no.
- ChatGPT Chrome Extension installed and enabled in the selected `Default`
  profile: yes.
- Native messaging host manifest correct: yes.
- Browser-client connection result: `Browser is not available: extension`.

In-app browser actions during this run:

- Opened the Qwen Devpost manage-submissions URL.
- Opened the visible `Join hackathon` / registration path.
- Unchecked the optional Devpost newsletter checkbox before sign-up.
- Started `Sign up with Google` using the authorized entrant account.
- Stopped when Google required passkey verification.

No Chrome window was opened without user permission. No password, passkey,
CAPTCHA answer, CAPTCHA bypass, Devpost event registration, project draft,
field paste, rules acceptance, payment, identity, tax, banking, travel,
employment/IP commitment, cloud resource creation, or final submit action was
performed.

The in-app browser tab was left on the Google passkey screen as a handoff
state. If the entrant completes the passkey, continue only until the next
visible state is inspected; stop again for any CAPTCHA, password, 2FA,
payment, identity, tax, banking, travel, broad IP/employment commitment, or
unsupported eligibility fact.

## Field Impact

- Repository URL remains GO.
- Official YouTube demo URL remains GO.
- Static working-project URL remains GO as a judge-accessible synthetic demo
  and local test-build path.
- Presentation preview and committed PPTX remain GO.
- Redacted Qwen live-call evidence remains GO for verified Qwen wording.
- Alibaba Cloud proof remains DOWNGRADE/STOP for any live hosted-backend
  claim. The Function Compute handler is a public code-file candidate, not
  proof that a live endpoint is deployed.
- Devpost registration/project creation remains STOP until the entrant
  completes passkey and any following CAPTCHA, then a stable draft exists.

## Immediate Final-Session Order

1. If using Chrome, the entrant must launch Chrome first; automation can retry
   the existing signed-in Chrome session only after Chrome is running.
2. If using the current in-app handoff, the entrant must complete Google
   passkey verification on the visible screen.
3. After passkey completion, inspect the next Devpost screen before clicking
   any registration, rules, or submit control.
4. If Devpost registration completes and `Create project` appears, complete
   any CAPTCHA manually; automation must not answer or bypass it.
5. Open `submission/qwen-final-captcha-bridge-paste-sheet.md` after a stable
   Devpost project draft exists.
6. Paste only the verified fields from the bridge sheet.
7. Keep the Alibaba sentence deployment-pending unless phone verification,
   zero-cost Function Compute deployment, and public proof are complete.
8. Preview the Devpost submission and re-open all public URLs before final
   submit.
9. Stop before official rules acceptance or final submit if the form requires
   a hard-stop commitment, identity/tax/banking data, payment method,
   unsupported eligibility fact, or inaccessible proof URL.

## GO / DOWNGRADE / STOP

GO - final live Qwen wording only if Devpost registration/draft access, public
URLs, redacted Qwen evidence, architecture, video, deck, testing path, and
Alibaba deployment proof all pass.

DOWNGRADE - submit truthful prototype wording if Devpost accepts the public
Function Compute code-file candidate and static demo while live Alibaba
deployment proof remains pending.

STOP - external commitment required before passkey verification, CAPTCHA
completion, phone verification, cloud deployment, official rules acceptance,
or final Devpost `Submit project`.
