# Academic CV Editor Skill

A research-oriented Agent Skill for reviewing, rewriting, tailoring, and rendering academic CVs for undergraduate, master's, and early-career researchers.

Its central principle is simple: **academic credibility and research substance come before generic résumé optimisation**.

## What makes it different

Most résumé tools default to corporate conventions: one page, aggressive action verbs, compulsory metrics, compressed bullets, and generic impact language. This skill instead focuses on:

- making a research identity legible;
- preserving research questions, cases, evidence, and methods;
- distinguishing papers, working papers, submissions, acceptances, presentations, and publications;
- calibrating claims to the applicant's actual contribution and career stage;
- allocating space according to academic relevance rather than prestige;
- allowing a readable two-page early-career academic CV when the evidence warrants it;
- rendering the result through a protected, modular LaTeX template.

## Repository structure

The root contains `SKILL.md`, English and Chinese READMEs, and the MIT license. `assets/` holds the protected LaTeX template; `references/` holds editorial rules; `examples/` has three complete fictional `.tex` samples; `scripts/` contains the compile helper; `tests/` contains manual evaluation cases and findings. `agents/` contains optional skill metadata.

## Skill format

The repository follows the Agent Skills pattern: `SKILL.md` contains the discoverable name/description and main workflow, while detailed rubrics, templates, scripts, and tests live in supporting folders.

## Modes

- **Review** — audit an existing CV and separate critical, substantive, and editorial issues.
- **Rewrite** — produce a complete revised academic CV while preserving facts.
- **Tailor** — adapt an existing CV for PhD, RA, scholarship, conference, or general academic use.
- **Template** — insert the revised record into the bundled LaTeX template and compile it when possible.

## LaTeX template

The bundled template uses:

- A4, 10pt article layout;
- Libertinus typography;
- compact research-oriented spacing;
- `#1F355A` accent colour;
- right-aligned dates;
- dedicated helpers for roles, projects, research puzzles, and papers.

Its visual layer is intentionally protected unless the user asks for redesign.

## Using the skill

Place the `academic-cv-skill` directory where your agent can discover Agent Skills, or explicitly tell the agent to use the skill when reviewing or rebuilding an academic CV.

Example requests:

```text
Review this CV using the academic-cv-editor skill. Do not rewrite it yet.
```

```text
Tailor my master academic CV for a political-science PhD application.
```

```text
Rewrite this CV and render it in the bundled LaTeX template.
```

## Compile the template

```bash
./scripts/compile_cv.sh assets/research_academic_cv.tex
```

A working TeX distribution with `latexmk` and the required LaTeX packages is needed.

## Public-data hygiene

The bundled template contains neutral placeholders only. Do not commit private phone numbers, personal email addresses, unpublished application materials, or other sensitive personal information to a public fork.

## License

MIT. See `LICENSE`.


## v0.2 validation note

All three standalone fictional examples compile with pdfLaTeX and Libertinus. They are short one-page fixtures, not dense two-page pagination tests. Evaluation cases are manual checks, not an automated behavioral benchmark. Template bytes are unchanged.

Compile with `bash scripts/compile_cv.sh examples/mei-tan.tex build`.
Required fonts: CTAN libertinus and libertinus-type1, with libertinus.map enabled for pdfLaTeX. Also install latexmk and packages named in the template preamble. Never silently replace missing fonts.
