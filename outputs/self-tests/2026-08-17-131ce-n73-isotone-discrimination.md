---
type: output
title: "Weekly self-test: 131Ce N=73 isotone discrimination"
created: 2026-08-17
updated: 2026-08-17
status: awaiting-review
review_status: unreviewed
tags: [weekly-self-test, 131ce, n73, signature, wobbling, evidence-independence]
---

# Weekly self-test: `131Ce` N=73 isotone discrimination

## Scope

This run selected one hard-threshold problem: whether a configuration-specific N=73 isotone comparison changes the ranking of signature/configuration coupling versus wobbling in `131Ce`. It checked the existing `133Ce` isotope comparison, Ding 2021's N=73 `[404]7/2+` systematics, and the `127Xe/129Ba` `h11/2` wobbling candidates. It did not inspect user experimental data, modify `PLAN.md` or raw evidence, start L4, or push.

## P0

- Scientific P0: none identified.
- Git/raw P0: none identified. The three inspected PDFs matched their recorded SHA-256 values, and `raw/zotero/wiki-inbox.bib` remained protected and unstaged.

## P1

1. **Under-extracted N=73 evidence in Ding 2021.** PDF p.9/Fig.6 directly compiles `129Ba/131Ce/133Nd` `[404]7/2+` signature splitting and states that pre-upbend initial alignment/`J^(2)` and high-spin persistence are consistent with a common configuration. The Wiki previously compressed this source to its N=75 experiments. D21-8 now records the N=73 layer as contextual, not new independent data.
2. **Configuration-specific transfer boundary.** The N=73 `[404]7/2+` systematics strengthen the positive-parity signature/configuration baseline. They do not transfer to the `h11/2` negative-parity sector or establish a unique γ deformation.
3. **Wobbling-control boundary.** `127Xe` has multiple E2-dominant band-3→1 links, but its second-phonon topology is atypical and the 651/652-keV region is contaminated. `129Ba` has a strong 365-keV E2-admixture argument, while higher links lack complete A44/polarization information; it is a legacy-data reanalysis and explicitly asks for new measurements. These cases show mechanism feasibility, not `131Ce` target evidence.
4. **Human-review state.** Ding source page remains `human-reviewed`, but new claim D21-8 and both project evidence rows remain `needs_review`/awaiting focused review. No existing claim state was cleared.

## Verification and research summary

- Necessary-companion check: one E2-dominant link is insufficient; a target wobbling assignment needs a coherent ΔI=1 link set across spin, stable band identity, polarization/δ branch control, and preferably absolute `B(E2)out/B(E2)in`.
- Background/resolution/gate check: rendered pages confirm Ding Fig.6, the `127Xe` Table 1 values and contamination statement, and the `129Ba` A22/A44/χ² figures without text-extraction ambiguity. The unresolved risks are experimental coverage and contamination, not PDF layout.
- Source-independence check: Ding's N=73 row imports old experiments; `127Xe` and `129Ba` use different datasets, but the latter reuses legacy data and imports the former's fingerprint/model comparison. Experimental and interpretive independence were counted separately.
- Belief-revision condition: wobbling moves from `unsupported` to `viable` for the current `131Ce` bands only if a stable target pair is accompanied by multiple measured E2-dominant ΔI=1 links with controlled δ branches/polarization and absolute-strength consistency. An N=73 neighbor label alone does not change the ranking.
- External search: a bounded 2026-08-17 CrossRef/arXiv and Scholar-oriented sweep found the existing 1977 `131Ce/129Ce` band paper, the 2016 lifetime work, the 2020 `127Xe` paper and already ingested Ding/Alwaleedi records, but no newer direct `131Ce` δ/polarization/lifetime dataset. This is a search-scope statement, not a claim of complete literature coverage.
- Stop condition: reached. Further searching without new target-nucleus electromagnetic data has low expected information gain.

## L3/L4 status

- L3 isotone-comparison milestone: completed-provisional, awaiting focused human review.
- Hypothesis ranking unchanged: signature/configuration coupling remains preferred; γ-soft core response remains model-assisted; wobbling/chirality do not upgrade.
- No L4 readiness audit was created. The required observables and existing public-data boundary are already recorded in the two `131Ce` L4 packages.

## Deferred important issues

1. **Figure 5.5 gated branching inputs and target δ/polarization.** Pages: [[alwaleedi-2013-band-structures-131ce]], [[131ce-collective-mode-discrimination]]. Importance: these observables can directly change the collective-mode ranking. Gap: gated intensities and a unified measured transition matrix remain unavailable. Path: continue L3 only when a direct source appears, or start a separate L4 only after the user supplies authorized Wiki-local data.
2. **Original-source crosswalk behind Ding's N=73 row.** Pages: [[ding-2021-131ba-133ce-signature-splitting]], [[131ce-positive-parity-reference-sequence]]. Importance: it can refine which historical `131Ce` sequence corresponds to the `[404]7/2+` systematics. Gap: the per-nucleus original band identities and reaction/transition locators were not re-ingested in this run. Path: a future targeted L3 ingest of the exact cited `129Ba/131Ce/133Nd` papers if that mapping becomes decision-relevant; do not treat it as an active WIP now.

## Human review focus

- P0: none identified.
- P1: D21-8 and the two new project evidence rows. Check that compiled N=73 data are not counted as a new Ding experiment, that `[404]7/2+` and `h11/2` sectors remain separate, and that neighbor wobbling labels are not transferred to `131Ce`.
- P2/P3: active-summary, nucleus-page propagation, handoff, queue and log synchronization.

## Files, Git, and checks

- Branch: `codex/weekly-self-test-20260817-131ce-n73-isotones`.
- Local WIP: current branch HEAD `WIP review: weekly self-test 2026-08-17 for user review`.
- Publication: prohibited before focused human review; no push will be attempted.
- Validation: `wiki_lint.py --fail-on error` completed with 0 errors, 69 warnings and 577 info findings; `git diff --check` passed.
- H2/H3 boundary: all seven task files were staged explicitly, no raw file was staged, post-commit index is empty, and the only remaining worktree change is the protected pre-existing `raw/zotero/wiki-inbox.bib` update.
- Overview/index: not updated because no page was added and the project ranking did not change.
- QMD refresh: deferred until review finalization; direct page reads and raw-PDF verification were used for this milestone.
