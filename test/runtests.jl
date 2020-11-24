using SpirvCross
using Test

resource(filename) = joinpath(@__DIR__, "resources", filename)

frag_shader_spv = resource("frag.spv")

ctx = Context()
ir = IR(ctx, frag_shader_spv)
comp = Compiler(ctx, ir)
res = ShaderResources(comp)
finalize(ctx)
