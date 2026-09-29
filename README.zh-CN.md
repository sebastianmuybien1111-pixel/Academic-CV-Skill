# Academic CV Editor Skill

这是一个面向本科生、硕士生及 early-career researchers 的研究型 Academic CV Agent Skill，可用于审阅、重写、定向修改并套用内置 LaTeX 模板生成学术简历。

核心原则是：**学术可信度和研究信息密度优先于普通求职简历的“包装感”。**

## 与普通简历 Skill 的区别

它不会默认执行“一页简历”“每条必须量化”“每个 bullet 都要强动词”等 corporate résumé 规则，而是重点处理：

- 申请人的 research identity 是否清晰；
- Research Profile、Research Interests、Research Experience、Papers 和 Research Agenda 是否彼此支持；
- 研究问题、案例、材料、方法和实际贡献是否被准确保留；
- research paper、working paper、submitted、accepted、presented、published 等状态是否严格区分；
- 本科生和 early-career researcher 的学术表述是否存在夸大；
- 篇幅是否按照学术相关性而非机构/经历的“名气”分配；
- 是否适合使用两页 Academic CV，而不是机械压缩为一页；
- 最终是否可以直接套入仓库内置的 LaTeX 模板。

## 四种工作模式

**Review**：只审阅和诊断，不擅自重写全文。

**Rewrite**：在不改变事实的情况下重新组织和修改完整 CV。

**Tailor**：针对 PhD、RA、奖学金、学术会议等目标调整 section 顺序、篇幅和强调重点。

**Template**：将修改后的内容写入 `assets/research_academic_cv.tex`，并在环境允许时编译 PDF。

## 模板原则

默认保护字体、边距、颜色、section hierarchy、日期右对齐、paper-entry 样式和 Research Puzzle 样式。除非用户明确要求 redesign，否则 Agent 应主要修改内容和 section 是否启用，而不是重新设计版式。

## 典型使用方式

```text
使用 academic-cv-editor skill 仔细检查这份 Academic CV，先不要全文重写。
```

```text
把我的 master CV 针对 Political Science PhD application 进行 tailoring。
```

```text
修改这份 CV，并直接套用 skill 内置的 LaTeX 模板，输出可编译的 tex。
```


## v0.2 validation note

All three standalone fictional examples compile with pdfLaTeX and Libertinus. They are short one-page fixtures, not dense two-page pagination tests. Evaluation cases are manual checks, not an automated behavioral benchmark. Template bytes are unchanged.

Compile with `bash scripts/compile_cv.sh examples/mei-tan.tex build`.
Required fonts: CTAN libertinus and libertinus-type1, with libertinus.map enabled for pdfLaTeX. Also install latexmk and packages named in the template preamble. Never silently replace missing fonts.
