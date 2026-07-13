---
type: model
title: "Routhian"
aliases: [Routhian, rotating-frame energy, cranking Routhian]
created: 2026-07-13
updated: 2026-07-13
status: ai-draft
review_status: unreviewed
model_family: rotating-mean-field-formalism
degrees_of_freedom: [rotational-frequency, angular-momentum, intrinsic-configuration]
parameters: [omega, deformation, quasiparticle-configuration]
tags: [cranking, rotating-nuclei, high-spin]
---

# Routhian

## Purpose

The rotating-frame Routhian organizes a nuclear mean-field calculation at angular frequency `omega`. In cranking notation the one-body form is `h-prime = h - omega dot J`, while the many-body form is `H-prime = H - omega dot J`.

## Assumptions

- The rotating-frame frequency and angular-momentum convention are defined.
- The mean-field or cranking approximation is valid for the configuration and spin range under discussion.

## Experimental Connection

Transition energies can be converted into approximate rotational frequencies and experimental Routhians for comparison with calculated quasiparticle Routhians. The kinematic and dynamic moments of inertia remain distinct: `J^(1) = J/omega` and `J^(2) = dJ/domega`.

## Predicted Observables

Calculated quasiparticle crossings, alignment components, rotational frequencies, moments of inertia and intrinsic orientation can be compared with band energies and transition systematics.

## Boundary

A Routhian minimum is an intrinsic rotating-frame result, not a directly measured laboratory energy level. Configuration crossings, deformation response and symmetry breaking must be interpreted within the chosen cranking model and supplemented by quantum or transition-strength calculations where needed.

## Known Limitations

The Routhian does not by itself restore broken symmetries, calculate left/right tunneling, or determine a unique experimental configuration. Pairing, residual interactions and deformation response can change the calculated trajectories.

## Sources

- [[frauendorf-2001-spontaneous-symmetry-breaking-rotating-nuclei]]
- [[tilted-axis-cranking]]

## Review Status

New model page; review pending.
