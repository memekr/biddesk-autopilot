# Qwen Final Week Execution Sheet

Public sources rechecked: 2026-07-02 KST.

Deadline: July 9, 2026, 2:00 PM PDT.

KST conversion: July 10, 2026, 6:00 AM KST.

Use this sheet as the first human-run plan for the final week. It does not replace the proof gates; it orders them so the entrant does not burn the last hours on assets that depend on missing cloud or public URL proof.

## Current Source Facts

- Devpost overview still lists the Qwen Cloud hackathon deadline as July 9, 2026, 2:00 PM PDT.
- Devpost rules still list the submission period as May 26, 2026, 8:00 AM PT through July 9, 2026, 2:00 PM PT.
- Devpost overview still requires a project using Qwen models available on Qwen Cloud and a track selection.
- Devpost public requirements still include a public open-source repository, Alibaba Cloud deployment proof, architecture diagram, public demo video, project text, and track identification.
- Devpost rules specify the Alibaba Cloud proof as a link to a public repository code file demonstrating Alibaba Cloud services and APIs.
- Devpost rules require the public demo video to be about 3 minutes, public on YouTube, Vimeo, or Facebook Video, and the local packet uses the stricter less-than-3-minute gate.
- Devpost judging criteria still weight Technical Depth & Engineering at 30%, Innovation & AI Creativity at 30%, Problem Value & Impact at 25%, and Presentation & Documentation at 15%.

## Final Week Order

### T-7 to T-5 Days: Account and Cloud Proof

1. Open Devpost and click `Join hackathon` only after the entrant is ready to accept participation requirements.
2. Create or confirm Qwen Cloud access, credits, Discord/community access, and an API key outside the repository.
3. Run the local connector proof with secrets redacted:

```bash
export QWEN_API_KEY="..."
export QWEN_BASE_URL="https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
export QWEN_MODEL="qwen-plus"
uv run biddesk-autopilot reports/sample-request.json --qwen-status --use-qwen
```

4. Deploy the backend or test build on Alibaba Cloud.
5. Add the public repository code-file proof that demonstrates Alibaba Cloud services or APIs.
6. Stop if Qwen Cloud or Alibaba Cloud proof cannot be captured. Use prototype wording only.

### T-5 to T-3 Days: Public Asset Assembly

1. Publish the repository under the entrant identity with `README.md`, `LICENSE`, source, sample input, generated sample output, setup commands, Qwen connector instructions, and Alibaba Cloud proof file.
2. Verify the prepared presentation deck from `submission/qwen-presentation-deck.md`, `submission/BidDesk-Autopilot-Qwen-presentation.pptx`, and https://memekr.github.io/biddesk-autopilot/qwen-presentation.html after public push.
3. Record the demo from `submission/qwen-demo-script.md` after the Qwen/Alibaba proof decision is known.
4. Keep the final video under 3 minutes and upload only to a public YouTube, Vimeo, or Facebook Video URL.
5. Prepare the working-project URL, reproducible test-build instructions, or safe temporary judge credentials using only synthetic data.

### T-3 to T-1 Days: Private Browser Verification

1. Run `bash scripts/submission-readiness.sh`.
2. Run `bash scripts/prepare-qwen-submission-handoff.sh`.
3. Open each public URL in a private/incognito browser.
4. Complete `submission/qwen-public-url-smoke-test.md`.
5. Complete `submission/qwen-judging-testing-access-gate.md`.
6. Review every live Qwen Cloud, Alibaba Cloud, customer, revenue, and production claim against captured proof.

### Final 24 Hours: Devpost Paste and Stop Line

1. Regenerate `submission/qwen-source-recheck-snapshot.md`.
2. Open `submission/qwen-final-devpost-submit-runbook.md`.
3. Paste fields in the runbook order.
4. Re-run private-browser checks after pasting URLs.
5. Accept official rules only after the entrant personally reviews eligibility and terms.
6. Click final `Submit project` only after the entrant confirms all fields and proof.

## GO / DOWNGRADE / STOP

GO - final week live submission path only if Qwen Cloud live-call proof, Alibaba Cloud deployment proof, public repository, public demo video, judge-accessible working project path, architecture diagram, deck asset, and Devpost fields are all verified.

DOWNGRADE - final week prototype path if the public repository, local reproducible test build, architecture diagram, demo video, deck, and truthful Qwen-ready wording exist but Qwen Cloud live proof or Alibaba Cloud deployment proof is incomplete.

STOP - external commitment required before Devpost login, joining the hackathon, accepting rules, creating cloud credentials, joining Discord, publishing a repository, uploading video, creating judge credentials, or clicking final `Submit project`.
