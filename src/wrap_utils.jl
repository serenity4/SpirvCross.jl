struct SpirvCrossError <: Exception
    msg::AbstractString
    return_code
end

Base.showerror(io::IO, e::SpirvCrossError) = print(io, "$(e.return_code): ", e.msg)

"""
    @check spvc_create_context(ctx)

Checks whether the expression returned SPVC_SUCCESS. Else, throw an error printing the corresponding code.
"""
macro check(expr)
    quote
        local msg = "failed to execute " * $(string(expr))
        @check $(esc(expr)) msg
    end
end

macro check(expr, msg)
    quote
        return_code = $(esc(expr))
        if Int(return_code) < 0
            throw(SpirvCrossError($msg, return_code))
        end
        return_code
    end
end

"""
Wraper around an opaque handle that refers to internal SPVC data.
"""
abstract type Handle end

Base.cconvert(T::Type{<:Ptr}, x::AbstractArray{<:Handle}) = getproperty.(x, :handle)
Base.cconvert(T::Type{<:Ptr}, x::Handle) = x

Base.unsafe_convert(T::Type{Ptr{Nothing}}, x::Handle) = x.handle

Base.broadcastable(x::Handle) = Ref(x)

null_ptr_ref() = Ref{Ptr{Cvoid}}()
