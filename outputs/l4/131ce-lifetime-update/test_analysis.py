import importlib.util
import math
import unittest
from pathlib import Path


MODULE_PATH = Path(__file__).with_name("analysis.py")
SPEC = importlib.util.spec_from_file_location("lifetime_analysis", MODULE_PATH)
analysis = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(analysis)


class LifetimeAnalysisTests(unittest.TestCase):
    def test_cg_k0_i2(self):
        self.assertAlmostEqual(analysis.cg2_stretched_e2(2.0, 0.0), 0.2, places=12)

    def test_tau_qt_inverse(self):
        a = analysis.predicted_tau_ps(827, 2.0, 13.5, 0.5)
        b = analysis.predicted_tau_ps(827, 4.0, 13.5, 0.5)
        self.assertAlmostEqual(a / b, 4.0, places=12)

    def test_delta_scan_boundary(self):
        self.assertAlmostEqual(1 / (1 + 0.5**2), 0.8)
        self.assertAlmostEqual((1.0 / 0.8) - 1.0, 0.25)

    def test_lineage_deduplication(self):
        result = analysis.run()
        self.assertEqual(result["independent_lineages"], ["singh2016-current", "li2004-original", "petrache1998-original"])
        self.assertEqual(result["singh_finite_qt_points"], 4)

    def test_singh_rotor_cross_check_is_bounded(self):
        result = analysis.run()
        self.assertLess(result["max_abs_rotor_residual_singh"], 0.16)

    def test_limit_direction_is_encoded(self):
        rows = {row["row_id"]: row for row in analysis.load_rows()}
        self.assertEqual((rows["S19"]["tau_bound"], rows["S19"]["qt_bound"]), ("upper", "lower"))
        self.assertEqual((rows["S23"]["tau_bound"], rows["S23"]["qt_bound"]), ("lower", "upper"))


if __name__ == "__main__":
    unittest.main()
