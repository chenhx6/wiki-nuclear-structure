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

    def test_success_probes_all_targets_and_leaves_no_files(self) -> None:
        completed, payload = self.invoke()

        self.assertEqual(completed.returncode, 0, completed.stderr)
        self.assertTrue(payload["ok"])
        self.assertEqual(len(payload["probes"]), 4)
        self.assertTrue(all(item["created"] for item in payload["probes"]))
        self.assertTrue(all(item["read_back"] for item in payload["probes"]))
        self.assertTrue(all(item["deleted"] for item in payload["probes"]))
        for target in (self.tmp_root, self.tmp_root / ".git", self.tmp_root / ".codex", self.tmp_root / ".agents"):
            self.assertEqual(list(target.glob(".codex-write-probe-*.tmp")), [])

    def test_profile_mismatch_fails_before_probes(self) -> None:
        completed, payload = self.invoke(profile="wrong-profile")

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "permission_profile_mismatch")
        self.assertEqual(payload["probes"], [])

    def test_protected_hash_mismatch_fails_before_probes(self) -> None:
        completed, payload = self.invoke(expected_hash="0" * 64)

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "protected_hash_mismatch")
        self.assertEqual(payload["probes"], [])

    def test_missing_target_fails_without_leaving_probe(self) -> None:
        shutil.rmtree(self.tmp_root / ".agents")

        completed, payload = self.invoke()

        self.assertEqual(completed.returncode, 1)
        self.assertFalse(payload["ok"])
        self.assertEqual(payload["error"]["code"], "probe_failed")
        self.assertEqual(list(self.tmp_root.glob(".codex-write-probe-*.tmp")), [])


if __name__ == "__main__":
    unittest.main()
