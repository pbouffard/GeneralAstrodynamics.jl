""" 
    TwoBody

Provides structures & functions for the two-body problem.
"""
module TwoBody

# Dependencies 

using ..CommonTypes

using Reexport

using Logging
using Base: isapprox, isequal, show
using LinearAlgebra: ×, ⋅, norm
using ComponentArrays
using StaticArrays
using Crayons

# Newton's Gravitation Constant
import PhysicalConstants.CODATA2018
G = 1.0 * CODATA2018.G

# Export data structures, constants, and constructors
export TwoBodySystem, Orbit, AbstractConic, Circular, InvalidOrbit,
       Elliptical, Parabolic, Hyperbolic, Invalid, Body, CelestialBody,
       Sun, Mercury, Venus, Earth, Moon, Luna, Mars, Jupiter, 
       Saturn, Uranus, Neptune, Pluto, G

# Export functions
export  semimajor_axis, eccentricity, eccentricity_vector, inclination, true_anomoly, 
        periapsis_radius, apoapsis_radius, periapsis_velocity, apoapsis_velocity,      
        radius, velocity, orbital_period, perifocal, inertial,
        time_since_periapsis, mean_motion, semi_parameter, conic_anomoly,
        specific_angular_momentum_vector, specific_angular_momentum, specific_energy,  
        isapprox, isequal, TwobodyPropagationResult, kepler, conic,
        keplerian, cartesian, isinvalid

# Include all module source code
include("twobody_states.jl")
include("twobody_calculations.jl")
include("kepler.jl")

end 