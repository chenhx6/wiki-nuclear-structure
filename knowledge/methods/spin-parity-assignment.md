---
type: method
title: Spin/parity assignment
aliases: [spin parity assignment, spin assignment, parity assignment, Jpi assignment, J^pi assignment]
created: 2026-07-09
updated: 2026-07-09
status: ai-draft
review_status: unreviewed
method_type: level-assignment
tags: [spin-parity, assignment, angular-distribution, dco, gamma-spectroscopy]
---

# Spin/Parity Assignment

## Purpose

Spin/parity assignment combines level-sequence logic, transition properties, and selected experimental observables to constrain `J^pi` for nuclear states.

## Inputs and Assumptions

- reliable level-sequence and coincidence relations;
- at least one transition-property handle such as angular distribution, DCO, polarization, conversion, or lifetime information;
- an explicit statement of what is measured directly and what is inferred from heuristic band regularity or comparison with known patterns.

## Typical Inputs

- transition energies and coincidence relations;
- candidate spin sequence and band context;
- angular distribution or angular-correlation information;
- DCO ratios, linear polarization, conversion coefficients, lifetimes, or band regularity when available.

## Source-Level Practice Boundary

[[summary-2013-bases-spin-parity-assignments]] is the main background source currently ingested for this page. It is a reference guide rather than an original experiment. For high-spin states it records practical heuristics for angular distributions and DCO ratios using a typical orientation parameter `σ/I = 0.3`, and it also distinguishes stronger arguments from weaker arguments for rotational-band assignments.

This page therefore treats spin/parity assignment as a method bundle, not as a single observable. In particular, a quoted "typical orientation parameter" from a guide should not be promoted into a universal `sigma/I` prescription.

## What It Can Establish

When several observables are mutually consistent, spin/parity assignment can narrow or fix plausible `J^pi` values for states and transitions.

## What It Cannot Establish Alone

No single rule is universal across detector geometry, reaction mechanism, and feeding history. Regular level spacing alone is usually weaker than angular-distribution, angular-correlation, polarization, conversion, or lifetime evidence.

## Related Pages

- [[angular-distribution]]
- [[angular-correlation]]
- [[dco-ratio]]
- [[linear-polarization-asymmetry]]
- [[multipole-mixing-ratio]]

## Sources

- [[summary-2013-bases-spin-parity-assignments]]
- [[chiara-2012-cu65-cu67-core-coupled-protons]]
