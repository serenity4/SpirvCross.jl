module SpirvCross

using Reexport

include(joinpath(@__DIR__, "..", "gen", "LibSpirvCross.jl"))
using .LibSpirvCross
const api = LibSpirvCross

include("wrap_utils.jl")
include("compiler.jl")

export
    Context,
    IR,
    Compiler,
    ShaderResources

end
