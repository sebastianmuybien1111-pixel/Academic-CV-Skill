---
name: academic-cv-editor
description: Review, rewrite, tailor, and render research-oriented academic CVs for undergraduate, master's, and early-career researchers. Use when a user wants an academic CV audited, edited, tailored for PhD/RA/scholarship/conference use, or converted into the bundled LaTeX template. Prioritizes research identity, factual credibility, methodological precision, and academic substance over generic corporate résumé conventions.
---

# Academic CV Editor

Use this skill for research-oriented academic CV work. Do not treat an academic CV as a corporate résumé by default.

## Core operating rule

Optimize for **academic legibility and credibility**, not generic impressiveness.

Preserve facts, status distinctions, methodological nuance, and uncertainty. Never invent achievements, metrics, methods, outputs, or research maturity.

## Workflow

1. Identify the requested mode:
   - **Review**: diagnose; do not silently rewrite the entire CV.
   - **Rewrite**: revise content and structure while preserving facts.
   - **Tailor**: adapt emphasis/order for a specific academic target without changing facts.
   - **Template**: rewrite and render the result in `assets/research_academic_cv.tex`.

2. Read `references/factual-record.md` and build a factual record before editing.
   - Extract institutions, degrees, dates, grades, tests, roles, supervisors, project titles, awards, publication/conference status, methods, languages, and software.
   - If multiple versions are supplied, compare them for contradictions.
   - Flag unresolved conflicts instead of choosing a value yourself.

3. Read `references/status-taxonomy.md` and run an academic-credibility audit.
   - Distinguish interest, course paper, research paper, working paper, conference paper, submitted, accepted, presented, forthcoming, and published.
   - Calibrate verbs to actual contribution.
   - Do not transform participation into leadership or assistance into project ownership. If a source only describes a design, do not imply data collection or analysis has begun.
   - For students and early-career researchers, show trajectory and potential without implying faculty-level authority.

4. Identify the research identity.
   - Map field -> subfield -> substantive problems -> mechanisms/themes -> empirical focus -> methods.
   - Compare Research Profile, Research Interests, Research Experience, Papers, and Current Research Agenda.
   - Preserve genuine interdisciplinarity; do not invent coherence.

5. Select and order sections according to target.
   - Use `references/target-modes.md`.
   - Allocate space by academic relevance and evidentiary value, not prestige.
   - Do not enforce a one-page rule.

6. Edit research content for information density.
   - Prefer: action + research object + evidence/method + analytical purpose.
   - Retain useful cases, sources, methods, concepts, and outputs.
   - Remove generic self-description, corporate buzzwords, and cosmetic quantification.

7. Calibrate methods.
   - Separate methods actually used from methods still being developed.
   - Do not upgrade one-off exposure into proficiency.
   - Describe application and proficiency separately: a method can have been used while proficiency is still developing. Consolidate into one qualified description; do not force a false choice.

8. If using Template Mode:
   - Read `references/template-policy.md` before editing the LaTeX asset.
   - Preserve the protected visual layer, including the full preamble and macros. The example output is a content fragment, not a standalone compilable CV.
   - Activate only sections supported by the user's record.
   - Escape LaTeX special characters in user content. Remove unused placeholder contact fields and their separators. Compile when a LaTeX runtime is available.
   - Render and visually inspect every PDF page for overflow, awkward page breaks, orphan headings, and excessive density. Compilation alone is not visual validation. If dependencies or rendering are unavailable, state the unverified checks explicitly.

9. Run final QA using `references/core-rubric.md` and `references/decision-tree.md`.

## Output language

Produce the final CV and its LaTeX content in English by default, even when the user gives instructions or source material in another language. Translate conservatively, preserving proper names, titles, statuses, and factual nuance. Explanations and audit notes may follow the user's language. If the user explicitly requests another CV language, follow that request. Do not claim that an English CV guarantees an English-language PDF when the LaTeX toolchain cannot render the supplied content; verify the final artifact.

## Non-negotiable prohibitions

Do not:
- fabricate or infer unsupported facts;
- turn `submitted` into `accepted`, `accepted` into `presented`, or `working paper` into `publication`;
- manufacture a Current Research Agenda from a vague interest;
- force every bullet to contain a number;
- use inflated claims such as `groundbreaking`, `pioneering`, `expert`, or `revolutionised` without strong factual support;
- compress a strong research CV to one page merely because the applicant is an undergraduate;
- preserve low-value extracurricular detail at the expense of research evidence;
- alter the protected typography/layout of the bundled template unless the user explicitly asks for a redesign.

## Output behavior

### Review mode
Classify findings as:
- **Critical** — factual/status/credibility errors or major structural problems.
- **Substantive** — research identity, relevance, methods, paper presentation, ordering, or space allocation.
- **Editorial** — wording, grammar, punctuation, or minor consistency.

### Rewrite mode
Return a complete revised version. Clearly flag any factual uncertainty that prevents a safe rewrite.

### Tailor mode
State the target and change selection, emphasis, ordering, compression, and terminology only. Never change the underlying record.

### Template mode
Return a compilable `.tex` file based on `assets/research_academic_cv.tex`; when feasible, also return the compiled PDF.

## Supporting references

Read as needed:
- `references/core-rubric.md` — editing philosophy and section rules.
- `references/decision-tree.md` — deterministic inclusion/ordering logic.
- `references/status-taxonomy.md` — academic status vocabulary.
- `references/target-modes.md` — target-specific priorities.
- `references/template-policy.md` — protected LaTeX design and rendering rules.
- `tests/evaluation_cases.md` — regression cases for the skill.

## v0.2 decision safeguards

Use inclusion criteria as transparent editorial guidance, not a score or numerical gate. One substantial project can support a research profile; two thin items do not automatically justify one. Put Education near the top for students unless the actual target gives a reason otherwise. Target priorities describe emphasis, not mandatory section order.

For MUN, label the activity as Model United Nations simulation leadership. Retain substantive guide writing and training without implying scholarly conference organisation, actual UN employment, or research supervision.

If evidence is sparse, use Selected Coursework or a qualified Research Interests section. Do not fill whitespace with invented research. A genuine one-page CV is valid. Preserve the user's master record when selecting a shorter tailored version.
