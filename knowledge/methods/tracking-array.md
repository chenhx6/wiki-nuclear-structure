---
type: method
title: "γ-ray tracking array analysis"
aliases: [tracking array, gamma-ray tracking array, γ-ray tracking array, GRETINA, AGATA, tracking-array response function]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
method_type: gamma-ray-tracking
tags: [gamma-ray-tracking, angular-distribution, angular-correlation, linear-polarization, pado-support]
---

# γ-Ray Tracking Array Analysis

## Purpose

γ-ray tracking arrays use segmented HPGe crystals and tracking algorithms to reconstruct gamma-ray interaction positions and directions. They enable continuous-angle angular correlations, angular distributions and linear-polarization measurements.

## Inputs and Assumptions

- Calibrated segmented HPGe interaction positions and tracking output.
- Energy-, angle- and configuration-matched response functions or event-mixing references.
- Control of clustering holes, tracking halos, finite detector population and Doppler/Lorentz effects when relevant.
- Separate modeling of detector response and nuclear alignment/population assumptions.

## Source-Level Foundation

[[lauritsen-2025-gamma-angular-formalism-tracking-arrays]] states that tracking arrays such as AGATA and GRETINA can determine photon interaction points with high precision, so conventional detector solid-angle attenuation coefficients can often be close to unity. The same source emphasizes that angular-distribution extraction remains non-trivial because tracking, decomposition, detector tiling and clustering effects create response functions that differ from older ring-detector arrays.

## Key Method Boundary

Tracking arrays can reduce one classical detector-geometry correction, but they do not remove the need to model nuclear alignment, magnetic-substate population, deorientation or feeding history. In Lauritsen 2025, detector solid-angle attenuation and nuclear alignment attenuation are explicitly different uses of `alpha_k`.

## Project Relevance

For [[sigma-over-i-uncertainty-in-pado-mixing-ratio-extraction]], this page is only an instrumentation/method anchor. It supports the statement that a modern tracking-array formalism still contains explicit `Pm(J)` and `sigma/J` assumptions for in-beam angular distributions; it does not provide a universal `sigma/I` prior.

## What It Can Establish

Tracking arrays can provide continuous-angle angular correlations, angular distributions and linear-polarization observables. With proper response treatment, they can help constrain multipolarity, parity, mixing ratio and alignment assumptions.

## What It Cannot Establish Alone

Tracking-array data do not remove the need for a population/alignment model. They do not by themselves define a transferable `sigma/I` value, and response-function systematics can still affect extracted angular-distribution coefficients.

## Sources

- [[lauritsen-2025-gamma-angular-formalism-tracking-arrays]]
