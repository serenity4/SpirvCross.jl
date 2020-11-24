module LibSpirvCross

import SPIRV_Cross_jll: libspirv_cross

using CEnum

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt

include("spirv_cross_common.jl")
include("spirv_cross_api.jl")

export Ctm, Ctime_t, Cclock_t

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), r"spv|SPV|Spv")
      @eval export $s
   end
end

end # module
