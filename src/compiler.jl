mutable struct Context <: Handle
    handle
    function Context()
        ctx_ptr = null_ptr_ref()
        @check spvc_context_create(ctx_ptr)
        ctx = new(ctx_ptr[])
        finalizer(spvc_context_destroy, ctx)
    end
end

struct IR <: Handle
    handle
end

struct Compiler <: Handle
    handle
end

struct ShaderResources <: Handle
    handle
end

function IR(ctx::Context, file)
    parsed_ir_ptr = null_ptr_ref()

    filesize = stat(file).size
    code = Array{UInt8}(undef, cld(filesize, 4))
    open(file) do io
        readbytes!(io, code, filesize)
    end
    code_final = reinterpret(UInt32, code)

    @check spvc_context_parse_spirv(ctx, code, length(code_final), parsed_ir_ptr)

    IR(parsed_ir_ptr[])
end

function Compiler(ctx::Context, ir::IR; backend=SPVC_BACKEND_GLSL, capture_mode=SPVC_CAPTURE_MODE_TAKE_OWNERSHIP)
    compiler_ptr = null_ptr_ref()
    @check spvc_context_create_compiler(ctx, backend, ir, capture_mode, compiler_ptr)
    Compiler(compiler_ptr[])
end

function ShaderResources(compiler::Compiler)
    resources_ptr = null_ptr_ref()
    @check spvc_compiler_create_shader_resources(compiler, resources_ptr)
    ShaderResources(resources_ptr[])
end
