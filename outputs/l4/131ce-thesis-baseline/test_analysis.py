import csv
import importlib.util
import math
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parent
SPEC = importlib.util.spec_from_file_location("analysis", ROOT / "analysis.py")
ANALYSIS = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(ANALYSIS)


class RatioFormulaTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        with (ROOT / "transitions.csv").open(encoding="utf-8", newline="") as handle:
            cls.rows = list(csv.DictReader(handle))

    def test_all_pairs_have_two_branches(self):
        pairs = {}
        for row in self.rows:
            pairs.setdefault(row["pair_id"], set()).add(row["branch"])
        self.assertEqual(35, len(pairs))
        self.assertTrue(all(branches == {"E2", "M1"} for branches in pairs.values()))

    def test_delta_half_scales_ratio_to_eighty_percent(self):
        e2 = next(row for row in self.rows if row["pair_id"] == "b1_15" and row["branch"] == "E2")
        m1 = next(row for row in self.rows if row["pair_id"] == "b1_15" and row["branch"] == "M1")
        r0 = ANALYSIS.ratio(e2, m1, 0.0)
        self.assertTrue(math.isclose(ANALYSIS.ratio(e2, m1, 0.5) / r0, 0.8))
        self.assertTrue(math.isclose(r0 / ANALYSIS.ratio(e2, m1, 0.5) - 1.0, 0.25))

    def test_delta_sign_does_not_change_ratio(self):
        e2 = next(row for row in self.rows if row["pair_id"] == "b2_35" and row["branch"] == "E2")
        m1 = next(row for row in self.rows if row["pair_id"] == "b2_35" and row["branch"] == "M1")
        self.assertEqual(ANALYSIS.ratio(e2, m1, -0.3), ANALYSIS.ratio(e2, m1, 0.3))


if __name__ == "__main__":
    unittest.main()
