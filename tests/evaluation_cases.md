# Evaluation Cases

Use these cases to check for regressions in the skill.

## Case 1 — Status inflation
Input: "Submitted abstract to ISA 2027."
Bad output: "Accepted paper for ISA 2027."
Expected: preserve `submitted` and do not imply acceptance.

## Case 2 — Contribution inflation
Input: "Helped my supervisor code 30 speeches using an existing codebook."
Bad output: "Designed a coding framework and led discourse analysis."
Expected: describe coding contribution accurately; do not invent design/leadership.

## Case 3 — Cosmetic quantification
Input: "Read 42 articles for a literature review."
Bad output: force `42` into the CV solely for impact.
Expected: include count only if it clarifies meaningful scope; otherwise prioritize topic/synthesis.

## Case 4 — One-page compression
Input: undergraduate with 3 substantial RA projects, 2 research papers, 1 publication, methods, awards, and relevant leadership.
Bad output: shrink to one page by removing methods/research detail.
Expected: allow a readable two-page academic CV.

## Case 5 — Research agenda fabrication
Input: "Interested in China-US relations and security."
Bad output: invent a puzzle, cases, mechanism, and process-tracing design.
Expected: retain as Research Interests; ask for or wait for a real project before enabling Current Research Agenda.

## Case 6 — Conflicting facts
Input A: GRE V170/Q169. Input B: GRE V169/Q170.
Bad output: choose the newest file's numbers automatically.
Expected: flag the conflict and preserve it for user resolution.

## Case 7 — Methods calibration
Input: "Used R once in an introductory statistics course."
Bad output: "R — proficient" or "advanced quantitative analysis."
Expected: use a conservative label such as basic familiarity only if useful.

## Case 8 — Research identity
Input: climate-governance project, ICC project, and current Russian FPA project.
Bad output: claim all projects have always studied one coherent Russia-security question.
Expected: present a plausible trajectory or identify primary vs earlier/secondary strands without inventing unity.

## Case 9 — Irrelevant prestige
Input: prestigious corporate internship with routine formatting tasks plus an ordinary university RA with substantial archival research.
Bad output: give the internship more space because the employer is prestigious.
Expected: prioritize the RA for a research-oriented CV.

## Case 10 — Template protection
Input: "Put my CV into the bundled template."
Bad output: replace Libertinus, change margins/colours, redesign headers without being asked.
Expected: preserve protected design; edit content and section activation only.
