---
name: wiki-evidence-query
description: >-
  Wiki-informed professional Q&A for low-energy nuclear structure and
  experimental spectroscopy. Use the Wiki as the preferred personal research
  context, not as a closed knowledge boundary. Support questions about level
  schemes, band structures, collective excitations, experimental criteria,
  models, competing interpretations, and cross-mass-region comparisons.
  Distinguish Wiki-grounded evidence, externally verified evidence, general
  scientific background, synthesis, and provisional inference. Default to
  read-only evidence-calibrated ordinary Q&A; expand beyond the Wiki or enter
  strict paper-evidence review when the question requires external verification,
  precise citation support, current literature, or manuscript-level checking.
---

# Wiki-Informed Evidence Query

This skill supports professional low-energy nuclear-structure Q&A.

Use the Wiki to understand the user, not to confine the answer.

## Scope

- Use the Wiki as the preferred personal research context and calibration layer.
- Support experimental spectroscopy, level schemes, band structures, collective
  excitations, experimental criteria, models, competing interpretations, and
  cross-mass-region comparison.
- A current research anchor such as A≈130 is not the boundary of answerable
  knowledge.
- Default to read-only professional Q&A, not editing workflows.
- Do not use this skill for ingestion, Wiki edits, raw/data/image changes,
  repository governance, planning, Git operations, scripts, automations,
  schedulers, or file organization.

## Startup and reading discipline

1. Follow `AGENTS.md` before all other instructions.
2. Follow the `AGENTS.md` startup sequence once per session.
3. If `README.md`, `Active handoff`, `profile.md`, `system/memory.md`,
   `knowledge/index.md`, and the recent `system/log.md` entries are already
   loaded in the current session, do not reread them unless repository state
   changed or the current question requires a specific section.
4. Do not reread startup files already loaded just because this skill is
   invoked.
5. Ordinary query work must not read `Previous active handoff`, superseded
   handoff, or handoff archive by default.
6. Ordinary query work must not read `USER_GUIDE.md`, `PLAN.md`,
   `system/review-history.md`, `system/wip-queue.md`,
   `system/paper-evidence-gate.md`, the full `system/vocabulary.md`, or the
   full `system/evidence-policy.md` by default.
7. If the target page or source is already known, read it directly. Do not
   rescan `knowledge/index.md` or run broader retrieval for formality alone.

## Wiki as a personalization layer, not a closed corpus

The Wiki is the preferred personal research context, not the boundary of
answerable knowledge.

Its purpose is to make the model more suitable for the user by preserving:

- research context;
- terminology and conventions;
- reviewed evidence;
- analysis methods;
- competing interpretations;
- current projects and priorities.

For an ordinary knowledge question:

1. Use relevant Wiki evidence first when it exists.
2. If the Wiki does not cover the topic adequately, continue with the best
   available general scientific knowledge and calibrated reasoning.
3. Briefly distinguish Wiki-grounded material from general background or
   provisional reasoning when that distinction affects reliability.
4. Do not describe general model knowledge as if it were stored, reviewed, or
   sourced in the Wiki.
5. Do not invent citations, data, locators, or author statements.
6. When the user asks for evidence, precise data, current literature,
   competing views, verification, or paper-level support, expand beyond the
   Wiki through external source retrieval and direct-source checking.
7. External material may later be routed to ingest, but ordinary answering
   does not require immediate ingestion.

## Knowledge-source routing

### 1. Wiki-grounded material

- Use source pages, nuclei pages, band pages, concept pages, observables pages,
  project pages, and synthesis pages already present in the Wiki.
- Use this layer for personalized, traceable, context-aligned answers.
- A claim described as Wiki-grounded must match the Wiki's current content and
  locator support.

### 2. General scientific background

- When the Wiki does not cover a topic adequately and the user did not say
  "only based on the Wiki", ordinary Q&A may use stable general scientific
  background.
- This includes standard nuclear-structure concepts, spectroscopy background,
  established method explanations, and limited calibrated physical reasoning.
- General scientific background can answer ordinary questions, but it is not
  current Wiki evidence.
- Do not claim that such material is already stored, reviewed, or sourced in
  the Wiki.
- Do not fabricate literature, data, DOI, locator, or quoted wording.
- For precise, controversial, or high-risk claims, lower wording strength or
  escalate to direct evidence.

### 3. Externally verified evidence

- Use external source retrieval and direct-source checking when the question
  requires evidence beyond the Wiki.
- Keep externally verified evidence separate from general model memory.
- If external retrieval is unavailable, say that external source verification
  was not completed and provide only the ordinary-mode explanation that can be
  supported without inventing sources.

## External verification triggers

Do not automatically perform external retrieval for every question.

Expand beyond the Wiki when one or more of the following applies:

- the user explicitly asks for citation, source, paper, link, search, latest,
  current, verification, or direct quotation;
- the answer depends on precise data, DOI, page, figure, table, equation,
  locator, or experimental condition;
- the question involves important controversy, competing interpretations, or
  absolute claims such as "first", "none", "all", "consensus", or "latest";
- the result is intended for manuscript, formal citation, or claim checking;
- Wiki-grounded content conflicts with other known information;
- model confidence is not high enough for a reliable specific conclusion.

## Conditional governance reads

- `system/vocabulary.md`: read only the relevant entry when aliases,
  abbreviations, experimental speech, or `do_not_merge_with` boundaries matter.
  Prefer page frontmatter `aliases` first. Do not read the full vocabulary by
  default.
- `system/workflows/query.md`: read only the relevant section when retrieval
  routing, semantic search, cross-source synthesis, competing interpretation,
  external extension, or workflow conflict is at issue.
- `system/evidence-policy.md`: read only the relevant section when claim kind,
  confidence, source independence, review status, or evidence grading is
  central to the answer.
- `system/paper-evidence-gate.md`: read only in strict paper-evidence mode.
- `system/review-history.md`: read only for questions about completed review
  rounds, review-finalized work, or `review commit message` traceability.
  Review history is not scientific evidence.
- `system/wip-queue.md`: read only for pending WIP, recovery, safe suspend, or
  unfinished review tasks. WIP queue is not scientific evidence.
- `system/handoff.md` and `system/log.md`: use only for task state or recent
  workflow history, not for scientific evidence.

## Terminology normalization

- Expand Chinese, English, abbreviation, alias, and historical forms
  bidirectionally when helpful for search.
- When a generic term can refer to multiple models or methods, list the
  candidates or answer them separately. Do not choose silently.
- In gamma-spectroscopy context, expand `gate`, "开门", "拉门", or "开窗" toward
  gating/coincidence-gate language while preserving energy and gate-type
  context.
- Do not merge terms listed under `do_not_merge_with`.
- Treat terminology normalization as search routing, not as scientific evidence.

## Retrieval paths

### Fast path

Use for:

- a known nucleus, band, transition, citation key, author, or page;
- "what does this source report?";
- simple definition;
- ordinary professional background;
- a stable topic not yet covered in the Wiki.

Default budget:

- read the directly relevant page if known;
- read 1-3 related source pages when Wiki evidence is requested;
- or answer directly from stable general scientific background;
- stop when the source locator is sufficient or the background explanation is
  already adequate.

Do not default to full semantic search, full vocabulary, full evidence policy,
raw readback, external search, evidence table, or complete controversy sweep.

### Standard path

Use for:

- method questions and experimental criteria;
- small source comparison;
- analytical research discussion;
- moderately ambiguous terminology;
- questions combining Wiki context and general scientific background;
- "is this interpretation reasonable?" style questions.

Default budget:

- inspect a small set of high-relevance pages or sources, usually 3-5
  candidates;
- add general scientific background only as needed.

Expand only when attribution is missing, sources conflict, a real alternative
interpretation exists, the current set is insufficient, or the user requests
broader evidence.

### Deep path

Use for:

- wobbling, chirality, gamma-soft/gamma-rigid, or other contested topics;
- cross-nucleus or cross-mass-region synthesis;
- high-value synthesis or project support;
- external literature expansion;
- manuscript-grade claim checking;
- precise locator review.

This path may use QMD `vsearch` or `query`, project/synthesis pages, multiple
supporting and alternative sources, raw readback, external retrieval, evidence
policy, and paper evidence gate. It is not the default path for simple Q&A.

## Local search and source-checking route

1. If the file path or page is already known, read it directly.
2. For precise nucleus, author, DOI, citation key, band name, or term queries,
   prefer `rg`, `qmd.cmd search`, or fast BM25.
3. For mechanisms, near-synonyms, or concept questions that keyword search
   misses, use `qmd.cmd vsearch`.
4. Use full `qmd.cmd query` only for high-value cross-page synthesis when the
   extra cost is justified.
5. Search snippets and rankings only choose candidates. They are not evidence.
6. Do not repeat the same retrieval without a clear benefit.
7. Do not scan the whole repository or `raw/` for ordinary questions.
8. A local Wiki miss does not automatically mean the field lacks knowledge.

## When a source page is enough

In ordinary mode, a source page is usually enough when:

1. it is directly relevant to the question;
2. source identity or citation key is clear;
3. the locator is sufficient for the current answer;
4. the wording is not materially ambiguous;
5. it does not conflict with the currently known related pages;
6. the question does not require quotation or manuscript-grade judgment.

Do not mechanically reread `raw/` if the source page already supports the
answer.

Prefer or require `raw/` or an external direct source when the question needs:

1. precise numbers, uncertainties, or formulas;
2. figure, table, level, transition, or data-location confirmation;
3. direct quotation;
4. missing or weak locator support;
5. conflict between source and synthesis or across sources;
6. controversy that depends on exact original wording;
7. manuscript-grade or formal-citation checking;
8. unresolved P0 or obvious high-risk ambiguity;
9. secondary-summary verification;
10. specific citable evidence for a topic not yet covered in the Wiki.

## Statement classes and provenance

Always keep these six statement classes distinct:

1. experimental fact;
2. experimental criterion;
3. author interpretation;
4. model result;
5. Codex or our provisional inference;
6. cross-source synthesis judgment.

Also distinguish provenance when relevant:

- Wiki-grounded;
- externally verified;
- general scientific background;
- synthesis or inference.

Do not force these labels as headings in every answer. Use natural wording when
the boundary matters, for example:

- "Wiki 中整理的来源报告..."
- "文献作者将其解释为..."
- "模型计算表明..."
- "通用核结构背景下..."
- "综合 Wiki 和一般专业知识..."
- "一种可能解释是..."
- "该判断尚未经过 external source verification..."

Do not present model memory, Wiki synthesis, provisional inference, or search
snippets as if they were a paper's direct conclusion.

## Modes

### Ordinary evidence-calibrated mode

This is the default for ordinary Wiki Q&A, research discussion, comparison,
analytical explanation, and early drafting.

In ordinary mode:

- prefer relevant Wiki context when available;
- use general scientific background when the Wiki is incomplete;
- provide the best currently supportable answer;
- distinguish fact, criterion, interpretation, model result, synthesis, and
  inference;
- lower wording strength when direct evidence is incomplete;
- explain source boundaries only when they affect reliability;
- expand to external sources only when the question requires it;
- do not refuse useful analysis merely because manuscript-grade evidence is not
  yet assembled;
- do not invent missing data or references.

Unreviewed Wiki material may be used as a research clue, but not described as
manuscript-grade evidence without saying so.

### Strict paper-evidence mode

Use only when the task is manuscript, submission, formal citation, direct
source, precise locator, key-claim confirmation, or explicit paper-evidence
review work.

Strict mode follows `system/paper-evidence-gate.md`. Do not let strict mode
spill into ordinary Q&A by default.

## Knowledge-gap routing

The following phrases are routing signals, not automatic stop conditions.

### 1. 当前知识库未覆盖

Use this when the Wiki currently lacks relevant pages or sources.

Do not infer that:

- the field has no knowledge;
- the literature does not exist;
- Codex cannot answer;
- the user cannot continue exploring.

Handling:

- If the user said "only based on the Wiki", report the coverage gap and stay
  inside the Wiki.
- Otherwise, continue with general scientific background when appropriate.
- If precise evidence is requested, expand to external sources.

### 2. 知识库当前未给出足够出处

Use this when the Wiki has related wording but lacks enough source, locator,
attribution, or claim-kind support to treat it as checked Wiki evidence.

Handling:

- explain what the Wiki actually provides;
- still offer careful analysis when useful;
- label synthesis or inference honestly;
- point to the most valuable source, raw, locator, or condition to check next;
- expand externally if the user asks.

### 3. 外部来源尚未核验

Use this when ordinary answering relies on general scientific background or an
unverified memory of the literature, and the claim should not yet be treated as
formally citable external evidence.

Do not add this sentence mechanically to every answer.

## Answer scaling

### Fast factual or background answer

Usually provide only:

- the direct answer;
- a brief source or provenance note when needed;
- one key limitation if it matters.

### Standard analytical answer

Usually provide:

- a short conclusion;
- the most relevant Wiki evidence or general-scientific basis;
- the main limitation or alternative explanation;
- a useful next-check direction only if it helps.

### Deep synthesis or strict review

Use fuller structure only for complex controversy or manuscript-grade work, for
example:

- evidence table;
- observed facts;
- experimental criteria;
- model results;
- author interpretation;
- synthesis;
- evidence gaps;
- external source list.

Only use an evidence table when there are multiple sources, multiple claims,
real competing interpretations, or the user explicitly asks for it. Do not
force empty sections. Do not append a suggested follow-up query mechanically.

## Stop conditions

- Stable background question: stop when a clear, reliable, non-precision-heavy
  explanation is already available.
- Direct experimental fact: stop when a direct source with sufficient locator
  and no known conflict is in hand.
- Author interpretation: stop once the author wording and locator are clear,
  unless the user asks for broader consensus or later dispute.
- Method or criterion: stop once definition, applicability, and main limits are
  clear.
- Competing interpretation: do not stop at the first supporting source; check
  the main support, at least one serious alternative, and the key limitation.
- Absolute or current claim: do not conclude from Wiki or memory alone; either
  retrieve external evidence or explicitly narrow the scope.

## Read-only boundary and low-headroom behavior

Ordinary Q&A with this skill is read-only.

Do not:

- modify the Wiki;
- update `system/handoff.md`;
- update `system/log.md`;
- update `system/wip-queue.md`;
- update `system/review-history.md`;
- commit;
- push.

If token, context, or execution headroom is low:

- stop expanding scope;
- return the part that is already verified or can be explained reliably;
- state the remaining gap;
- suggest one concrete next question or verification direction;
- do not update workflow state files during pure Q&A.

If the user asks to ingest literature, update pages, save external evidence,
modify synthesis, or record review state, exit this read-only skill and route
to the relevant workflow.
