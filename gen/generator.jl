using Clang
import SPIRV_Cross_jll

include_dir = joinpath(SPIRV_Cross_jll.artifact_dir, "include", "spirv_cross")
headers = joinpath.(Ref(include_dir), ["spirv_cross_c.h"])

# Set up include paths
clang_includes = [include_dir]

# Clang arguments
clang_extraargs = ["-v"]

# Test if a header should be wrapped
function wrap_header(top_hdr, cursor_header)
    any(startswith.(Ref(dirname(cursor_header)), clang_includes))
end

wc = init(;
                        headers,
                        output_file=joinpath(@__DIR__, "spirv_cross_api.jl"),
                        common_file=joinpath(@__DIR__, "spirv_cross_common.jl"),
                        clang_includes,
                        clang_args=clang_extraargs,
                        header_wrapped=wrap_header,
                        header_library=x -> "libspirv_cross",
                        clang_diagnostics=true,
                        )
run(wc)
