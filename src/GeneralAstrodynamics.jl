"""
A superpackage for handling common astrodynamics 
problems. See the __Extended Help__ section
for more information!

# Extended Help

## License
$(LICENSE)

## Imports
$(IMPORTS)

## Exports
$(EXPORTS)
"""
module GeneralAstrodynamics

using Reexport, Requires
using DocStringExtensions

@template (FUNCTIONS, METHODS, MACROS) =
    """
    $(SIGNATURES)
    $(DOCSTRING)
    $(METHODLIST)
    """

@template (TYPES, CONSTANTS) =
    """
    $(TYPEDEF)
    $(DOCSTRING)
    """

include(joinpath("Calculations", "Calculations.jl"))
include(joinpath("CoordinateFrames", "CoordinateFrames.jl"))
include(joinpath("States", "States.jl"))

@reexport using .Calculations
@reexport using .CoordinateFrames
@reexport using .States

function __init__()
    @require DifferentialEquations="0c46a032-eb83-5123-abaf-570d42b7fbaa" begin
        include(joinpath("Propagation", "Propagation.jl"))
        @reexport using .Propagation
    end
end

end # module
