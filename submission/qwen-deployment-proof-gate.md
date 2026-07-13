# Qwen Deployment Proof Gate

Public sources rechecked: 2026-07-13 KST.

Deadline: July 20, 2026, 2:00 PM PDT, which is July 21, 2026, 6:00 AM KST.

## Current Source Facts

- Devpost overview and Official Rules now show the Qwen Cloud hackathon deadline as July 20, 2026, 2:00 PM Pacific Time.
- Devpost public pages showed about 7,742 participants during the July 13 source recheck.
- Qwen Cloud challenge page says the submission deadline was extended to July 20, while coupon redemption remained July 9 at 11:59 PM GMT+7.
- Devpost requirements say projects must use Qwen Cloud and provide proof that the backend runs on Alibaba Cloud.
- Devpost rules specify Alibaba Cloud deployment proof as a public repository code-file link demonstrating use of Alibaba Cloud services and APIs.
- Devpost overview currently says the public video can be on YouTube, Vimeo, or Facebook Video; Official Rules section 4 says YouTube, Vimeo, or Youku. Use the Official Rules host list unless the live form clearly accepts another host.
- Devpost official rules set the stricter video gate: less than three (3) minutes, with judges not required to watch beyond three minutes.
- Devpost resources direct entrants through Devpost registration, Qwen Cloud signup, hackathon credit request, Discord join, and Qwen Cloud first API call/model-selection docs.
- Current repository code-file candidate: `src/biddesk_autopilot/alibaba_function_compute.py`, public URL target `https://github.com/memekr/biddesk-autopilot/blob/main/src/biddesk_autopilot/alibaba_function_compute.py`.

## Evidence To Capture Before Final Claims

Use this gate before recording a demo, publishing a public repo, accepting rules, or clicking final submit.

| Evidence | Minimum acceptable proof | Where it appears |
| --- | --- | --- |
| Qwen Cloud API use | Config screenshot or log excerpt showing Qwen Cloud base URL/model plus one successful non-sensitive request | README, demo video, Devpost `Built With` or `How it uses Qwen Cloud` |
| Alibaba Cloud proof code file | Public repository code-file link to `src/biddesk_autopilot/alibaba_function_compute.py` showing a Function Compute-compatible handler and sanitized FC runtime metadata | Alibaba Cloud deployment proof field or project description support |
| Alibaba Cloud live deployment | Public endpoint URL, console screenshot, deployment log, or service page showing the backend hosted on Alibaba Cloud | README, demo video, Devpost project links |
| Public repository | Public GitHub/GitLab URL under entrant identity with README, license, source, and sample report | Devpost repo field |
| Demo video | Public URL, less than 3 minutes, showing local packet generation and live endpoint/Qwen path if available | Devpost video field |
| Presentation deck | Public deck or PDF URL summarizing problem, architecture, Qwen usage, deployment, and business value | Devpost presentation/deck field if requested |
| Architecture diagram | Mermaid diagram or exported image matching the deployed flow | README, Devpost description, deck |

## GO / DOWNGRADE / STOP

GO - submit live Qwen entry only if Qwen Cloud API evidence, Alibaba Cloud deployment proof, public repo, public video, deck, and architecture diagram are all present.

DOWNGRADE - submit truthful prototype wording if the local prototype and public assets are ready but Qwen Cloud API or Alibaba Cloud proof is incomplete. Use "Qwen-ready local prototype" and do not claim production deployment.

STOP - external commitment required before account signup, voucher request, API key creation, Discord join, cloud deployment, public repository publication, video upload, rules acceptance, or final Devpost `Submit project`.

## Final Operator Notes

- Keep API keys, account IDs, billing details, customer names, and private deployment identifiers out of public materials.
- Use only synthetic sample data unless the entrant explicitly provides approved public customer facts.
- If any source page, Devpost timezone rendering, or platform dashboard disagrees about the deadline, use the earliest official cutoff visible to the entrant.
- The Function Compute handler code-file URL can reduce the remaining Alibaba proof gap, but it must be paired with a truthful deployment-pending qualifier until a live Alibaba Cloud deployment is verified.
