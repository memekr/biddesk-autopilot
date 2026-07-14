# Qwen Final Devpost Submit Runbook

Public sources rechecked: 2026-07-15 KST.

Deadline: July 20, 2026, 2:00 PM PDT.

KST conversion: July 21, 2026, 6:00 AM KST.

Use this only after `submission/qwen-source-recheck-snapshot.md`, `submission/qwen-deployment-proof-gate.md`, `submission/qwen-alibaba-function-compute-proof-adapter.md`, `submission/qwen-live-connector-gate.md`, `submission/qwen-video-duration-arbitration.md`, `submission/qwen-judging-testing-access-gate.md`, and `submission/qwen-public-url-smoke-test.md` are current.

## Source Facts

- Devpost overview and Official Rules list the Qwen Cloud hackathon deadline as July 20, 2026, 2:00 PM Pacific Time.
- Public Devpost surfaces show about 7,883 participants during the July 15, 2026 KST source refresh.
- Devpost resources still route entrants through Devpost registration, Qwen Cloud signup, hackathon credits, Discord, first API call, model selection, and API-key documentation.
- The public requirement set still includes Qwen Cloud usage, Alibaba Cloud deployment proof, a public code repository, an architecture diagram, a public demo video, working-project access for judges, and project text.
- Alibaba Cloud deployment proof should be a link to a public repository code file demonstrating use of Alibaba Cloud services and APIs.
- `src/biddesk_autopilot/alibaba_function_compute.py` is the current Function Compute code-file candidate, but live deployment proof is still required before claiming the backend is running on Alibaba Cloud.
- Devpost overview currently says the public video can be on YouTube, Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, or Youku. Use the Official Rules host list unless the live form clearly accepts another host.
- Devpost rules use the stricter demo-video threshold of less than 3 minutes.
- Official public YouTube video is available at https://youtu.be/mEV2CP06JQo; YouTube Studio showed runtime `1:46`, public visibility, and no copyright issues found, and public oEmbed returned HTTP 200.

## Paste Order

1. Open `https://qwencloud-hackathon.devpost.com/`.
2. Click `Join hackathon` if the entrant has not joined yet.
3. Open the project submission form from Devpost.
4. Select Track 4 Autopilot Agent. Add Track 3 Agent Society only as secondary evidence if the form permits multiple track signals.
5. Paste the title from `submission/qwen-devpost-draft.md`.
6. Paste the short description from `submission/qwen-devpost-draft.md`.
7. Paste the project description from `submission/qwen-devpost-draft.md`, then append only verified live proof from `submission/qwen-deployment-proof-gate.md`, `submission/qwen-alibaba-function-compute-proof-adapter.md`, and `submission/qwen-live-connector-gate.md`.
8. Paste the public repository URL after confirming it is publicly visible and has `README.md`, `LICENSE`, source, sample inputs, and setup instructions.
9. Paste the public demo video URL https://youtu.be/mEV2CP06JQo after confirming it still opens publicly and the runtime is less than 3 minutes.
10. Paste the working-project URL or reproducible test-build instructions from `submission/qwen-judging-testing-access-gate.md`.
11. Paste https://memekr.github.io/biddesk-autopilot/qwen-presentation.html or the public repository PPTX URL if Devpost asks for a presentation deck or PDF.
12. Paste architecture and Alibaba Cloud deployment proof links if the form has separate fields; otherwise include them in the project description.
13. Run the private-browser checks in `submission/qwen-public-url-smoke-test.md`.
14. Review every live Qwen Cloud, Alibaba Cloud, revenue, customer, and production claim against captured evidence.
15. Accept official rules only after the entrant has personally reviewed eligibility, terms, and all public URLs.
16. Click final `Submit project` only after the entrant confirms the complete form.

## Required Data

- Entrant or team display name.
- Public repository URL under the entrant identity.
- Public demo video URL: https://youtu.be/mEV2CP06JQo.
- Judge-accessible working project URL or reproducible test-build instructions.
- Alibaba Cloud deployment proof URL or screenshot reference; use the Function Compute code-file candidate only with a deployment-pending qualifier until live proof exists.
- Qwen Cloud live-call proof with secrets redacted.
- Architecture diagram location.
- Presentation deck or PDF URL if the field is present: https://memekr.github.io/biddesk-autopilot/qwen-presentation.html or the public repository PPTX URL.
- Safe temporary judge credentials only if the project is private and the entrant intentionally created synthetic-data, non-admin credentials.

## GO / DOWNGRADE / STOP

GO - final Devpost submit only if public repository, public demo video, judge-accessible working project, Qwen Cloud live proof, Alibaba Cloud deployment proof, architecture diagram, deck asset, and all paste fields are verified.

DOWNGRADE - submit truthful prototype wording only if public repository, local reproducible test build, architecture diagram, demo video, and deck exist but live Qwen Cloud or Alibaba Cloud proof is incomplete.

STOP - external commitment required before Devpost login, joining the hackathon, accepting official rules, creating cloud credentials, adding private test credentials, or clicking final `Submit project`.
