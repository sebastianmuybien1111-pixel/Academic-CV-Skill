# Bundled LaTeX Template Policy

## Purpose

`assets/research_academic_cv.tex` is the canonical visual template bundled with this skill. It is research-oriented, compact, and intended primarily for one- or two-page early-career academic CVs.

## Protected visual layer

Unless the user explicitly asks for redesign, preserve:
- A4 document format;
- 10pt base document class;
- Libertinus typography;
- 1.15 cm left/right margins and 1 cm top/bottom margins;
- accent colour `#1F355A`;
- body colour `#20242A`;
- small-caps section headers with rule;
- right-aligned dates;
- bullet indentation and compact spacing;
- paper-entry hierarchy;
- Research Puzzle styling;
- overall whitespace philosophy.

## Core reusable macros

Preserve these commands unless a technical fix is required:

```latex
\datedline{content}{date}
\roleentry{role}{institution / supervisor}{date}
\projectline{project title}
\puzzleline{research question}
\paperentry{paper content}
```

## Editable layer

The agent may edit:
- name and contact information;
- section activation and order;
- factual content;
- role/project/paper count;
- bullet count;
- Research Profile;
- Research Interests;
- dates and institutions;
- methods and languages.

## Section modularity

Available sections include:
- Research Profile
- Education
- Research Interests
- Research Experience
- Selected Research Papers & Working Papers
- Publications
- Conference Presentations
- Awards & Honours
- Current Research Agenda
- Teaching Experience
- Academic Leadership
- Professional Experience
- University Service
- Research Methods & Technical Skills
- Languages

Delete unsupported/empty sections. Never output headings such as `Publications — None`.

## Rendering workflow

1. Complete content architecture before inserting it into LaTeX.
2. Escape LaTeX-sensitive characters.
3. Compile using `latexmk -pdf` or an equivalent available command.
4. Check logs for overfull boxes and compilation warnings.
5. Inspect the PDF visually.
6. Fix awkward page breaks by content prioritization/spacing first; do not shrink the whole design reflexively.

## Personal-data rule

The public template must contain no original user's private contact details or institution-specific personal identifiers. Use fictional or neutral placeholders in examples.
