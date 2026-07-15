from __future__ import annotations

import json
import sys
import unittest
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT / "system" / "scripts"))

import wiki_lint  # noqa: E402


class FrontmatterTests(unittest.TestCase):
    def test_parses_scalars_and_inline_lists(self) -> None:
        meta, body, errors = wiki_lint.parse_frontmatter_text(
            "---\n"
            "type: nucleus\n"
            "A: 131\n"
            "aliases: [Ba-131, barium-131]\n"
            "active: true\n"
            "---\n"
            "# Body\n"
        )
        self.assertEqual(errors, [])
        self.assertEqual(meta["type"], "nucleus")
        self.assertEqual(meta["A"], 131)
        self.assertEqual(meta["aliases"], ["Ba-131", "barium-131"])
        self.assertIs(meta["active"], True)
        self.assertIn("# Body", body)

    def test_rejects_missing_frontmatter_fence(self) -> None:
        meta, _, errors = wiki_lint.parse_frontmatter_text("# No frontmatter\n")
        self.assertEqual(meta, {})
        self.assertIn("missing opening ---", errors)


class LinkTests(unittest.TestCase):
    def test_ignores_wikilinks_in_fenced_code(self) -> None:
        text = "[[real-page]]\n```markdown\n[[example-only]]\n```\n"
        self.assertEqual(wiki_lint.wikilinks(text), ["real-page"])


class ScientificGuardrailTests(unittest.TestCase):
    def test_research_note_state_and_promotion_target(self) -> None:
        config = wiki_lint.load_config(REPO_ROOT / "system" / "lint-config.json")
        base_meta = {
            "type": "research-note",
            "title": "Example reasoning",
            "aliases": [],
            "created": "2026-07-15",
            "updated": "2026-07-15",
            "status": "ai-draft",
            "review_status": "unreviewed",
            "tags": [],
            "evidence_sources": ["example-source"],
            "created_from": "reflect",
        }
        page = wiki_lint.Page(
            path=Path("knowledge/research-notes/example.md"),
            relative="knowledge/research-notes/example.md",
            slug="example",
            expected_type="research-note",
            meta={**base_meta, "reasoning_status": "unreviewed"},
            body="",
        )
        issues: list[wiki_lint.Issue] = []
        wiki_lint.validate_page(page, config, issues)
        self.assertIn("REASONING_STATUS_VALUE", {issue.code for issue in issues})

        page.meta = {**base_meta, "reasoning_status": "promoted", "promotion_target": ""}
        issues = []
        wiki_lint.validate_page(page, config, issues)
        self.assertIn("PROMOTION_TARGET_MISSING", {issue.code for issue in issues})
        self.assertIn("PROMOTED_WITHOUT_REVIEW", {issue.code for issue in issues})

        page.meta = {
            **base_meta,
            "reasoning_status": "provisional",
            "evidence_sources": [],
        }
        issues = []
        wiki_lint.validate_page(page, config, issues)
        self.assertIn("EVIDENCE_SOURCES_EMPTY", {issue.code for issue in issues})

    def test_ordinary_query_research_note_candidate_is_excluded_by_contract(self) -> None:
        query_workflow = (REPO_ROOT / "system" / "workflows" / "query.md").read_text(
            encoding="utf-8-sig"
        )
        skill = (
            REPO_ROOT / ".agents" / "skills" / "wiki-evidence-query" / "SKILL.md"
        ).read_text(encoding="utf-8-sig")
        self.assertIn("ordinary Q&A 的候选过滤必须默认排除", query_workflow)
        self.assertIn("knowledge/research-notes/", query_workflow)
        self.assertIn("discard paths under `knowledge/research-notes/`", skill)
        self.assertIn("grounded sources", skill)

    def test_high_confidence_requires_human_confirmation(self) -> None:
        page = wiki_lint.Page(
            path=Path("knowledge/concepts/example.md"),
            relative="knowledge/concepts/example.md",
            slug="example",
            expected_type="concept",
            meta={
                "type": "concept",
                "title": "Example",
                "aliases": [],
                "created": "2026-07-02",
                "updated": "2026-07-02",
                "status": "active",
                "review_status": "unreviewed",
                "tags": [],
                "confidence": "high",
            },
            body="",
        )
        config = wiki_lint.load_config(REPO_ROOT / "system" / "lint-config.json")
        issues: list[wiki_lint.Issue] = []
        wiki_lint.validate_page(page, config, issues)
        self.assertIn("HIGH_UNCONFIRMED", {issue.code for issue in issues})

    def test_nucleus_mass_number_must_equal_z_plus_n(self) -> None:
        page = wiki_lint.Page(
            path=Path("knowledge/nuclei/131ba.md"),
            relative="knowledge/nuclei/131ba.md",
            slug="131ba",
            expected_type="nucleus",
            meta={"nuclide": "131ba", "element": "Ba", "A": 132, "Z": 56, "N": 75},
            body="",
        )
        config = wiki_lint.load_config(REPO_ROOT / "system" / "lint-config.json")
        issues: list[wiki_lint.Issue] = []
        wiki_lint.validate_nucleus(page, config, issues)
        self.assertIn("NUCLIDE_SUM", {issue.code for issue in issues})

    def test_claim_level_governance_metrics_and_issues(self) -> None:
        page = wiki_lint.Page(
            path=Path("knowledge/sources/example.md"),
            relative="knowledge/sources/example.md",
            slug="example",
            expected_type="source",
            meta={
                "review_status": "unreviewed",
                "raw_file": "",
                "citation_key": "",
            },
            body=(
                "## Key Results\n\n"
                "| ID | 陈述 | claim_kind | evidence_level | locator | needs_review |\n"
                "|---|---|---|---|---|---|\n"
                "| C1 | observed | experimental-fact | direct | PDF p.1 | true |\n"
                "| C2 | incomplete | | direct | | false |\n"
            ),
        )
        config = wiki_lint.load_config(REPO_ROOT / "system" / "lint-config.json")
        issues: list[wiki_lint.Issue] = []
        metrics = wiki_lint.audit_governance([page], config, issues)
        self.assertEqual(metrics.page_unreviewed, 1)
        self.assertEqual(metrics.source_unreviewed, 1)
        self.assertEqual(metrics.claims_total, 2)
        self.assertEqual(metrics.claim_needs_review, 1)
        self.assertEqual(metrics.claim_missing_locator, 1)
        self.assertEqual(metrics.claim_missing_kind, 1)
        self.assertEqual(metrics.source_missing_raw_file, 1)
        self.assertEqual(metrics.source_missing_citation_key, 1)
        self.assertEqual(
            {
                "CLAIM_NEEDS_REVIEW",
                "CLAIM_LOCATOR_MISSING",
                "CLAIM_KIND_MISSING",
                "CITATION_KEY_MISSING",
            },
            {issue.code for issue in issues},
        )


class RepositoryIntegrationTests(unittest.TestCase):
    def test_repository_has_no_lint_errors(self) -> None:
        report = wiki_lint.run_lint(
            REPO_ROOT,
            REPO_ROOT / "system" / "lint-config.json",
            check_git=False,
        )
        errors = [issue for issue in report.issues if issue.severity == "error"]
        self.assertEqual(
            errors,
            [],
            "\n" + "\n".join(f"{issue.code} {issue.path}: {issue.message}" for issue in errors),
        )
        self.assertEqual(
            sum(issue.code == "CLAIM_NEEDS_REVIEW" for issue in report.issues),
            report.governance.claim_needs_review,
        )
        self.assertIn("GOVERNANCE page_unreviewed=", wiki_lint.report_as_text(report))
        payload = json.loads(wiki_lint.report_as_json(report))
        self.assertEqual(
            payload["governance"]["claim_needs_review"],
            report.governance.claim_needs_review,
        )


if __name__ == "__main__":
    unittest.main()
