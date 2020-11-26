# SpirvCross

![tests](https://github.com/serenity4/SpirvCross.jl/workflows/Run%20tests/badge.svg)

Wrapper around [SPIR-V Cross](https://github.com/KhronosGroup/SPIRV-Cross) generated with Clang.

This package intends to provide Julia bindings to the C API of SPIR-V Cross, and will suit the needs of those who only want a barebone wrapper. Abstractions, however, are not planned at the moment, though the package contains a few convenience functions to reflect into compiled SPIR-V shaders.

It is currently used in conjunction with [VulkanCore.jl](https://github.com/JuliaGPU/VulkanCore.jl). See also a (fork of the) higher-layer [Vulkan.jl](https://github.com/serenity4/Vulkan.jl) (under active development).
