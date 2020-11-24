module SpirvCross

include(joinpath(@__DIR__, "..", "gen", "LibSpirvCross.jl"))
using .LibSpirvCross
const api = LibSpirvCross

include("wrap_utils.jl")
include("resources.jl")

export
    Context,
    IR,
    Compiler,
    ShaderResources,
    get_resource_list

end
