from __future__ import annotations

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


if __name__ == "__main__":
    unittest.main()
