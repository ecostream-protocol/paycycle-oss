# How we run Drips Wave

Plain rules so contributors know what to expect.

## Issues
- Every Wave issue has: a summary, the files to touch, acceptance criteria, a complexity (Trivial, Medium or High) and a hint.
- We label them `wave`, plus `good first issue` for Trivial ones, and an area label (`contracts`, `sdk`, `web`, `documentation`).
- We keep scope small enough to finish within one Wave. If an issue turns out bigger, we split it.

## Assignment
- Comment on an issue to claim it. We assign within 2 days, first come first served, preferring people who explain their approach in one or two sentences.
- One active issue per contributor at a time while there is a queue.
- If there is no visible progress after 3 days, we may unassign so someone else can take it. A short update keeps your claim.

## Review service level
- First response to every pull request within 3 days.
- We tell you exactly what to change and why. We do not leave PRs silent.

## Definition of done
- Acceptance criteria are all met.
- CI is green: `cargo test`, `npm run build` and `npm test`.
- New behaviour has tests. If contract rules changed, `MockPayCycle` and its tests changed too.
- UI changes include a screenshot and work with a keyboard.
- No secrets, no unrelated changes, no new dependency without a reason.

## Quality policy
We welcome AI-assisted contributions, but you are responsible for what you submit. Pull requests that were not run or tested, copy other work, or ignore the acceptance criteria will be closed without a reward.

## Rewards
Rewards follow the Wave Program rules. We rate issues fairly, merge good work quickly and mark finished issues complete promptly.
