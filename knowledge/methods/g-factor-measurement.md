---
type: method
title: g-factor measurement
aliases: [g factor measurement, nuclear g factor, magnetic moment measurement]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
method_type: electromagnetic-moment-measurement
tags: [g-factor, magnetic-moment, hyperfine, tdpad]
---

# g-Factor Measurement

## Purpose

`g`-factor measurements constrain magnetic moments and therefore provide structural information about the wavefunction and configuration content of nuclear states.

## Inputs and Assumptions

- a precession-sensitive observable such as TDPAD or a related hyperfine method;
- known or modeled hyperfine fields and site fractions;
- an explicit treatment of initial alignment/orientation rather than a hidden empirical default.

## Common Dependencies

- a method to observe spin precession or related hyperfine effects;
- a controlled description of implantation site fractions or local fields;
- an explicit treatment of initial alignment/orientation and attenuation.

## Current Boundary Source

[[gray-2020-hyperfine-fields-g-factor-measurements]] is the current source anchor. It studies hyperfine fields for `66Ga`, `67Ge`, and `69Ge` implanted into Fe and Gd hosts at `6 K`, and uses TDPAD-style amplitude analysis as part of the `g`-factor workflow.

For the sigma-over-I project, the relevant lesson is methodological: empirical alignment expectations can be wrong, and amplitude losses may reflect several coupled effects. This source should not be rewritten as a direct prompt angular-distribution or P-ADO fitting prescription.

## What It Can Establish

With controlled field calibration and site modeling, `g`-factor measurements can extract or constrain magnetic moments and test structural assignments.

## What It Cannot Establish Alone

This method does not by itself fix a universal Gaussian alignment width for unrelated prompt-decay angular-distribution analyses.

## Related Pages

- [[time-differential-perturbed-angular-distribution]]
- [[deorientation]]
- [[sigma-over-i]]

## Sources

- [[gray-2020-hyperfine-fields-g-factor-measurements]]
