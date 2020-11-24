using SpirvCross
using Test

const spv = SpirvCross

function test_ubo_decorations(ctx::Context, shader, descriptor_sets, bindings)
    ir = IR(ctx, shader)
    comp = Compiler(ctx, ir)
    res = ShaderResources(comp)
    list = get_resource_list(res)
    
    _descriptor_sets = spv.spvc_compiler_get_decoration.(comp, getproperty.(list, :id), spv.SpvDecorationDescriptorSet)
    _bindings = spv.spvc_compiler_get_decoration.(comp, getproperty.(list, :id), spv.SpvDecorationBinding)
    
    @test all(_descriptor_sets .== descriptor_sets)
    @test all(_bindings .== _bindings)
end

resource(filename) = joinpath(@__DIR__, "resources", filename)

ctx = Context()

@testset "Uniform Buffer Object decorations" begin
    for (file, ds, b) ∈ zip(
        ["vert.spv", "frag.spv"],
        [[0], []],
        [[0], []],
        )
        test_ubo_decorations(ctx, resource(file), ds, b)
    end
end

finalize(ctx)
