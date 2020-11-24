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

struct ReflectedResource
    id::Int
    base_type::Int
    type::Int
    name::String
end

Base.convert(T::Type{ReflectedResource}, x::spvc_reflected_resource) = T(x.id, x.base_type_id, x.type_id, unsafe_string(x.name))

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

function get_resource_list(resources::ShaderResources; resource_type=SPVC_RESOURCE_TYPE_UNIFORM_BUFFER)
    list = Ref{Ptr{spvc_reflected_resource}}()
    count = Ref{Int32}()
    @check spvc_resources_get_resource_list_for_type(resources, resource_type, list, count)
    # vec = Vector{spvc_reflected_resource}(undef, count[])
    # @check spvc_resources_get_resource_list_for_type(resources, resource_type, vec, count)
    convert.(ReflectedResource, unsafe_wrap(Array, list[], (count[],)))
end
