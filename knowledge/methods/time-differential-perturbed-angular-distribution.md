---
type: method
title: Time-differential perturbed angular distribution
aliases: [TDPAD, time differential perturbed angular distribution, perturbed angular distribution]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
method_type: hyperfine-time-dependent-angular-correlation
tags: [tdpad, hyperfine, alignment, g-factor, angular-correlation]
---

# Time-Differential Perturbed Angular Distribution

## Purpose

Time-differential perturbed angular distribution (TDPAD) uses time-dependent anisotropy or correlation signals to probe hyperfine interactions, alignment, and related nuclear moments such as `g` factors.

## Inputs and Assumptions

- time-resolved anisotropy or correlation data with calibrated detector timing;
- a host/environment model for the implanted ions or recoils;
- an explicit separation between alignment effects, field-free fractions, and hyperfine-field assumptions.

## Core Observable

In the currently ingested boundary source [[gray-2020-hyperfine-fields-g-factor-measurements]], the measured `R(t)` amplitude depends on both the alignment term `B2` and the field-free fraction `p`. This means a reduced oscillation amplitude is not a unique signature of either weaker alignment or a larger field-free fraction.

## Boundary for the Sigma-over-I Project

TDPAD is not the same workflow as prompt in-beam P-ADO mixing-ratio extraction. The `sigma/I` discussion in Gray 2020 appears in a host-specific, isomeric `g`-factor context and should be used only as a boundary example showing that empirical alignment expectations may fail.

## What It Can Establish

TDPAD can constrain hyperfine precession behavior and, with controlled implantation and site information, support `g`-factor extraction and alignment diagnostics.

## What It Cannot Establish Alone

TDPAD amplitude by itself does not uniquely determine alignment or field-free fraction. It also does not define a universal prompt-decay `sigma/I` prior for fusion-evaporation angular-distribution fitting.

## Related Pages

- [[angular-correlation]]
- [[g-factor-measurement]]
- [[deorientation]]
- [[sigma-over-i]]

## Sources

- [[gray-2020-hyperfine-fields-g-factor-measurements]]
