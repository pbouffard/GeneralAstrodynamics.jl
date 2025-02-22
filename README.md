[![Tests](https://github.com/cadojo/GeneralAstrodynamics.jl/workflows/Tests/badge.svg)](https://github.com/cadojo/GeneralAstrodynamics.jl/actions?query=workflow%3ATests)
[![Docs](https://github.com/cadojo/GeneralAstrodynamics.jl/workflows/Documentation/badge.svg)](https://cadojo.github.io/GeneralAstrodynamics.jl/dev)

# GeneralAstrodynamics.jl
_Common astrodynamics calculations, with units!_

Release `v0.9` has all of the __Features__ listed below. Release `v0.10` is in-progress, and will re-implement nearly every type. Release `v0.10` will also be moved within [JuliaSpace](https://github.com/juliaspace) to better integrate with other astrodynamics packages within Julia! The following changes are in the works for `v0.10`.

1. State vectors, parameter vectors, and orbits are parameterized by units
2. State vectors and parameter vectors now match `DifferentialEquations`, `ModelingToolkit`, and `AstrodynamicalModels` syntax
3. Plotting functions are being re-written with `Plots` recipes
4. Common coordinate frames used within astrodynamics are provided within a new module, `OrbitalFrames`, along with functionality for specifying new coordinate frames
5. Common transforms between coordinate frames, and user-defined transforms as defined with `CoordinateTransformations` are provided in `OrbitalFrames`

## JuliaCon Talk

Check out `GeneralAstrodynamics` in action at JuliaCon 2021! The talk [_Going to Jupiter with Julia_](https://www.youtube.com/watch?v=WnvKaUsGv8w) walks through a simple Jupiter mission design while gently introducing astrodynamics, Julia, and `GeneralAstrodynamics`.

## Features

The following features are available in release `v0.9`, and will still be provided in release `v0.10`.

### Restricted Two-body Problem (R2BP)
* Structures for Cartesian and Keplerian states, and R2BP systems
* Functions which implement common R2BP equations
* Kepler and Lambert solvers
* Orbit propagation and plotting

### Circular Restricted Three-body Problem (CR3BP)
* Structures for dimensioned and normalized Cartesian states, and dimensioned and normalized CR3BP systems
* Functions which implement common CR3BP equations
* Analytical and iterative (numerical) Halo orbit solvers
* Unstable and stable Halo orbit manifold computation
* Orbit propagation and plotting
* Zero-velocity curve computation and plotting

### N-body Problem (NBP)
* This was implemented in a previous package version, and is currently being refactored

## Usage

Check out the [Getting Started](https://cadojo.github.io/GeneralAstrodynamics.jl/dev/) documentation for code examples, and more detail about using this package. 
