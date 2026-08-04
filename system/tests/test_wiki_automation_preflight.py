from __future__ import annotations

import hashlib
import json
import os
import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[2]
SCRIPT = REPO_ROOT / "system" / "scripts" / "wiki_automation_preflight.ps1"
POWERSHELL = Path(r"C:\WINDOWS\System32\WindowsPowerShell\v1.0\powershell.exe")


@unittest.skipUnless(os.name == "nt", "the preflight uses Windows ACLs and PowerShell")
class WikiAutomationPreflightTests(unittest.TestCase):
    def setUp(self) -> None:
        self.tmp_root = Path(tempfile.mkdtemp(prefix="wiki-preflight-", dir=REPO_ROOT / "tmp"))
        for name in (".git", ".codex", ".agents"):
            (self.tmp_root / name).mkdir()
        (self.tmp_root / ".codex" / "config.toml").write_text(
            'default_permissions = "wiki_l3"\n', encoding="utf-8"
        )
        skill_dir = self.tmp_root / ".agents" / "skills" / "wiki-evidence-query"
        skill_dir.mkdir(parents=True)
        (skill_dir / "SKILL.md").write_text("# Test sentinel\n", encoding="utf-8")
        bib = self.tmp_root / "raw" / "zotero"
        bib.mkdir(parents=True)
        (bib / "wiki-inbox.bib").write_bytes(b"@article{probe, title={probe}}\n")
        self.bib_hash = hashlib.sha256(
            (bib / "wiki-inbox.bib").read_bytes()
        ).hexdigest().upper()

    def tearDown(self) -> None:
        shutil.rmtree(self.tmp_root, ignore_errors=True)

    def invoke(self, *, profile: str = "wiki_l3", expected_hash: str | None = None):
        env = os.environ.copy()
        env["CODEX_PERMISSION_PROFILE"] = profile
        command = [
            str(POWERSHELL),
            "-NoProfile",
            "-ExecutionPolicy",
            "Bypass",
            "-File",
            str(SCRIPT),
            "-Root",
            str(self.tmp_root),
            "-ExpectedProfile",
            "wiki_l3",
            "-ProtectedBibHash",
            expected_hash or self.bib_hash,
        ]
        completed = subprocess.run(
            command,
            cwd=self.tmp_root,
            env=env,
            text=True,
            capture_output=True,
            check=False,
        )
        payload = json.loads(completed.stdout.strip())
        return completed, payload

    def protected_tree_snapshot(self) -> dict[str, bytes | None]:
        snapshot: dict[str, bytes | None] = {}
        for root_name in (".codex", ".agents"):
            root = self.tmp_root / root_name
            for path in sorted(root.rglob("*")):
                relative = path.relative_to(self.tmp_root).as_posix()
                snapshot[relative] = path.read_bytes() if path.is_file() else None
        return snapshot

    def assert_no_probe_files(self) -> None:
        for target in (
            self.tmp_root,
            self.tmp_root / ".git",
            self.tmp_root / ".codex",
            self.tmp_root / ".agents",
        ):
            self.assertEqual(list(target.glob(".codex-write-probe-*.tmp")), [])

    def test_schema_2_success_checks_permission_matrix_and_leaves_no_files(self) -> None:
        protected_before = self.protected_tree_snapshot()

        completed, payload = self.invoke()

        self.assertEqual(completed.returncode, 0, completed.stderr)
        self.assertEqual(payload["schema_version"], 2)
        self.assertTrue(payload["ok"])
        self.assertEqual(len(payload["write_probes"]), 2)
        self.assertEqual(
            [Path(item["path"]).name for item in payload["write_probes"]],
            [self.tmp_root.name, ".git"],
        )
        self.assertTrue(all(item["created"] for item in payload["write_probes"]))
        self.assertTrue(all(item["read_back"] for item in payload["write_probes"]))
        self.assertTrue(all(item["deleted"] for item in payload["write_probes"]))
        self.assertEqual(len(payload["protected_read_checks"]), 2)
        self.assertTrue(all(item["readable"] for item in payload["protected_read_checks"]))
        self.assertEqual(
            [item["sentinel"] for item in payload["protected_read_checks"]],
            [
                ".codex/config.toml",
                ".agents/skills/wiki-evidence-query/SKILL.md",
            ],
        )
        self.assertEqual(self.protected_tree_snapshot(), protected_before)
        self.assert_no_probe_files()

    def test_profile_mismatch_fails_before_probes(self) -> None:
        completed, payload = self.invoke(profile="wrong-profile")

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "permission_profile_mismatch")
        self.assertEqual(payload["write_probes"], [])
        self.assertEqual(payload["protected_read_checks"], [])

    def test_protected_hash_mismatch_fails_before_probes(self) -> None:
        completed, payload = self.invoke(expected_hash="0" * 64)

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "protected_hash_mismatch")
        self.assertEqual(payload["write_probes"], [])
        self.assertEqual(payload["protected_read_checks"], [])

    def test_missing_git_fails_without_leaving_probe(self) -> None:
        shutil.rmtree(self.tmp_root / ".git")

        completed, payload = self.invoke()

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "probe_failed")
        self.assertEqual(payload["protected_read_checks"], [])
        self.assert_no_probe_files()

    def test_missing_protected_sentinel_fails_after_clean_write_probes(self) -> None:
        (self.tmp_root / ".agents" / "skills" / "wiki-evidence-query" / "SKILL.md").unlink()

        completed, payload = self.invoke()

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "protected_read_failed")
        self.assertEqual(len(payload["write_probes"]), 2)
        self.assertTrue(all(item["deleted"] for item in payload["write_probes"]))
        self.assertEqual(len(payload["protected_read_checks"]), 2)
        self.assertTrue(payload["protected_read_checks"][0]["readable"])
        self.assertFalse(payload["protected_read_checks"][1]["readable"])
        self.assert_no_probe_files()


if __name__ == "__main__":
    unittest.main()
