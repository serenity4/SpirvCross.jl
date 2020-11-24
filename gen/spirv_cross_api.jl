# Julia wrapper for header: spirv_cross_c.h
# Automatically generated using Clang.jl


function spvc_get_version(major, minor, patch)
    ccall((:spvc_get_version, libspirv_cross), Cvoid, (Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}), major, minor, patch)
end

function spvc_get_commit_revision_and_timestamp()
    ccall((:spvc_get_commit_revision_and_timestamp, libspirv_cross), Cstring, ())
end

function spvc_msl_vertex_attribute_init(attr)
    ccall((:spvc_msl_vertex_attribute_init, libspirv_cross), Cvoid, (Ptr{spvc_msl_vertex_attribute},), attr)
end

function spvc_msl_resource_binding_init(binding)
    ccall((:spvc_msl_resource_binding_init, libspirv_cross), Cvoid, (Ptr{spvc_msl_resource_binding},), binding)
end

function spvc_msl_get_aux_buffer_struct_version()
    ccall((:spvc_msl_get_aux_buffer_struct_version, libspirv_cross), UInt32, ())
end

function spvc_msl_constexpr_sampler_init(sampler)
    ccall((:spvc_msl_constexpr_sampler_init, libspirv_cross), Cvoid, (Ptr{spvc_msl_constexpr_sampler},), sampler)
end

function spvc_msl_sampler_ycbcr_conversion_init(conv)
    ccall((:spvc_msl_sampler_ycbcr_conversion_init, libspirv_cross), Cvoid, (Ptr{spvc_msl_sampler_ycbcr_conversion},), conv)
end

function spvc_hlsl_resource_binding_init(binding)
    ccall((:spvc_hlsl_resource_binding_init, libspirv_cross), Cvoid, (Ptr{spvc_hlsl_resource_binding},), binding)
end

function spvc_context_create(context)
    ccall((:spvc_context_create, libspirv_cross), spvc_result, (Ptr{spvc_context},), context)
end

function spvc_context_destroy(context)
    ccall((:spvc_context_destroy, libspirv_cross), Cvoid, (spvc_context,), context)
end

function spvc_context_release_allocations(context)
    ccall((:spvc_context_release_allocations, libspirv_cross), Cvoid, (spvc_context,), context)
end

function spvc_context_get_last_error_string(context)
    ccall((:spvc_context_get_last_error_string, libspirv_cross), Cstring, (spvc_context,), context)
end

function spvc_context_set_error_callback(context, cb, userdata)
    ccall((:spvc_context_set_error_callback, libspirv_cross), Cvoid, (spvc_context, spvc_error_callback, Ptr{Cvoid}), context, cb, userdata)
end

function spvc_context_parse_spirv(context, spirv, word_count, parsed_ir)
    ccall((:spvc_context_parse_spirv, libspirv_cross), spvc_result, (spvc_context, Ptr{SpvId}, Cint, Ptr{spvc_parsed_ir}), context, spirv, word_count, parsed_ir)
end

function spvc_context_create_compiler(context, backend, parsed_ir, mode, compiler)
    ccall((:spvc_context_create_compiler, libspirv_cross), spvc_result, (spvc_context, spvc_backend, spvc_parsed_ir, spvc_capture_mode, Ptr{spvc_compiler}), context, backend, parsed_ir, mode, compiler)
end

function spvc_compiler_get_current_id_bound(compiler)
    ccall((:spvc_compiler_get_current_id_bound, libspirv_cross), UInt32, (spvc_compiler,), compiler)
end

function spvc_compiler_create_compiler_options(compiler, options)
    ccall((:spvc_compiler_create_compiler_options, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_compiler_options}), compiler, options)
end

function spvc_compiler_options_set_bool(options, option, value)
    ccall((:spvc_compiler_options_set_bool, libspirv_cross), spvc_result, (spvc_compiler_options, spvc_compiler_option, spvc_bool), options, option, value)
end

function spvc_compiler_options_set_uint(options, option, value)
    ccall((:spvc_compiler_options_set_uint, libspirv_cross), spvc_result, (spvc_compiler_options, spvc_compiler_option, UInt32), options, option, value)
end

function spvc_compiler_install_compiler_options(compiler, options)
    ccall((:spvc_compiler_install_compiler_options, libspirv_cross), spvc_result, (spvc_compiler, spvc_compiler_options), compiler, options)
end

function spvc_compiler_compile(compiler, source)
    ccall((:spvc_compiler_compile, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Cstring}), compiler, source)
end

function spvc_compiler_add_header_line(compiler, line)
    ccall((:spvc_compiler_add_header_line, libspirv_cross), spvc_result, (spvc_compiler, Cstring), compiler, line)
end

function spvc_compiler_require_extension(compiler, ext)
    ccall((:spvc_compiler_require_extension, libspirv_cross), spvc_result, (spvc_compiler, Cstring), compiler, ext)
end

function spvc_compiler_flatten_buffer_block(compiler, id)
    ccall((:spvc_compiler_flatten_buffer_block, libspirv_cross), spvc_result, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_variable_is_depth_or_compare(compiler, id)
    ccall((:spvc_compiler_variable_is_depth_or_compare, libspirv_cross), spvc_bool, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_hlsl_set_root_constants_layout(compiler, constant_info, count)
    ccall((:spvc_compiler_hlsl_set_root_constants_layout, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_hlsl_root_constants}, Cint), compiler, constant_info, count)
end

function spvc_compiler_hlsl_add_vertex_attribute_remap(compiler, remap, remaps)
    ccall((:spvc_compiler_hlsl_add_vertex_attribute_remap, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_hlsl_vertex_attribute_remap}, Cint), compiler, remap, remaps)
end

function spvc_compiler_hlsl_remap_num_workgroups_builtin(compiler)
    ccall((:spvc_compiler_hlsl_remap_num_workgroups_builtin, libspirv_cross), spvc_variable_id, (spvc_compiler,), compiler)
end

function spvc_compiler_hlsl_set_resource_binding_flags(compiler, flags)
    ccall((:spvc_compiler_hlsl_set_resource_binding_flags, libspirv_cross), spvc_result, (spvc_compiler, spvc_hlsl_binding_flags), compiler, flags)
end

function spvc_compiler_hlsl_add_resource_binding(compiler, binding)
    ccall((:spvc_compiler_hlsl_add_resource_binding, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_hlsl_resource_binding}), compiler, binding)
end

function spvc_compiler_hlsl_is_resource_used(compiler, model, set, binding)
    ccall((:spvc_compiler_hlsl_is_resource_used, libspirv_cross), spvc_bool, (spvc_compiler, SpvExecutionModel, UInt32, UInt32), compiler, model, set, binding)
end

function spvc_compiler_msl_is_rasterization_disabled(compiler)
    ccall((:spvc_compiler_msl_is_rasterization_disabled, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_aux_buffer(compiler)
    ccall((:spvc_compiler_msl_needs_aux_buffer, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_swizzle_buffer(compiler)
    ccall((:spvc_compiler_msl_needs_swizzle_buffer, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_buffer_size_buffer(compiler)
    ccall((:spvc_compiler_msl_needs_buffer_size_buffer, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_output_buffer(compiler)
    ccall((:spvc_compiler_msl_needs_output_buffer, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_patch_output_buffer(compiler)
    ccall((:spvc_compiler_msl_needs_patch_output_buffer, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_needs_input_threadgroup_mem(compiler)
    ccall((:spvc_compiler_msl_needs_input_threadgroup_mem, libspirv_cross), spvc_bool, (spvc_compiler,), compiler)
end

function spvc_compiler_msl_add_vertex_attribute(compiler, attrs)
    ccall((:spvc_compiler_msl_add_vertex_attribute, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_msl_vertex_attribute}), compiler, attrs)
end

function spvc_compiler_msl_add_resource_binding(compiler, binding)
    ccall((:spvc_compiler_msl_add_resource_binding, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_msl_resource_binding}), compiler, binding)
end

function spvc_compiler_msl_add_discrete_descriptor_set(compiler, desc_set)
    ccall((:spvc_compiler_msl_add_discrete_descriptor_set, libspirv_cross), spvc_result, (spvc_compiler, UInt32), compiler, desc_set)
end

function spvc_compiler_msl_set_argument_buffer_device_address_space(compiler, desc_set, device_address)
    ccall((:spvc_compiler_msl_set_argument_buffer_device_address_space, libspirv_cross), spvc_result, (spvc_compiler, UInt32, spvc_bool), compiler, desc_set, device_address)
end

function spvc_compiler_msl_is_vertex_attribute_used(compiler, location)
    ccall((:spvc_compiler_msl_is_vertex_attribute_used, libspirv_cross), spvc_bool, (spvc_compiler, UInt32), compiler, location)
end

function spvc_compiler_msl_is_resource_used(compiler, model, set, binding)
    ccall((:spvc_compiler_msl_is_resource_used, libspirv_cross), spvc_bool, (spvc_compiler, SpvExecutionModel, UInt32, UInt32), compiler, model, set, binding)
end

function spvc_compiler_msl_remap_constexpr_sampler(compiler, id, sampler)
    ccall((:spvc_compiler_msl_remap_constexpr_sampler, libspirv_cross), spvc_result, (spvc_compiler, spvc_variable_id, Ptr{spvc_msl_constexpr_sampler}), compiler, id, sampler)
end

function spvc_compiler_msl_remap_constexpr_sampler_by_binding(compiler, desc_set, binding, sampler)
    ccall((:spvc_compiler_msl_remap_constexpr_sampler_by_binding, libspirv_cross), spvc_result, (spvc_compiler, UInt32, UInt32, Ptr{spvc_msl_constexpr_sampler}), compiler, desc_set, binding, sampler)
end

function spvc_compiler_msl_remap_constexpr_sampler_ycbcr(compiler, id, sampler, conv)
    ccall((:spvc_compiler_msl_remap_constexpr_sampler_ycbcr, libspirv_cross), spvc_result, (spvc_compiler, spvc_variable_id, Ptr{spvc_msl_constexpr_sampler}, Ptr{spvc_msl_sampler_ycbcr_conversion}), compiler, id, sampler, conv)
end

function spvc_compiler_msl_remap_constexpr_sampler_by_binding_ycbcr(compiler, desc_set, binding, sampler, conv)
    ccall((:spvc_compiler_msl_remap_constexpr_sampler_by_binding_ycbcr, libspirv_cross), spvc_result, (spvc_compiler, UInt32, UInt32, Ptr{spvc_msl_constexpr_sampler}, Ptr{spvc_msl_sampler_ycbcr_conversion}), compiler, desc_set, binding, sampler, conv)
end

function spvc_compiler_msl_set_fragment_output_components(compiler, location, components)
    ccall((:spvc_compiler_msl_set_fragment_output_components, libspirv_cross), spvc_result, (spvc_compiler, UInt32, UInt32), compiler, location, components)
end

function spvc_compiler_msl_get_automatic_resource_binding(compiler, id)
    ccall((:spvc_compiler_msl_get_automatic_resource_binding, libspirv_cross), UInt32, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_msl_get_automatic_resource_binding_secondary(compiler, id)
    ccall((:spvc_compiler_msl_get_automatic_resource_binding_secondary, libspirv_cross), UInt32, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_msl_add_dynamic_buffer(compiler, desc_set, binding, index)
    ccall((:spvc_compiler_msl_add_dynamic_buffer, libspirv_cross), spvc_result, (spvc_compiler, UInt32, UInt32, UInt32), compiler, desc_set, binding, index)
end

function spvc_compiler_msl_add_inline_uniform_block(compiler, desc_set, binding)
    ccall((:spvc_compiler_msl_add_inline_uniform_block, libspirv_cross), spvc_result, (spvc_compiler, UInt32, UInt32), compiler, desc_set, binding)
end

function spvc_compiler_get_active_interface_variables(compiler, set)
    ccall((:spvc_compiler_get_active_interface_variables, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_set}), compiler, set)
end

function spvc_compiler_set_enabled_interface_variables(compiler, set)
    ccall((:spvc_compiler_set_enabled_interface_variables, libspirv_cross), spvc_result, (spvc_compiler, spvc_set), compiler, set)
end

function spvc_compiler_create_shader_resources(compiler, resources)
    ccall((:spvc_compiler_create_shader_resources, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_resources}), compiler, resources)
end

function spvc_compiler_create_shader_resources_for_active_variables(compiler, resources, active)
    ccall((:spvc_compiler_create_shader_resources_for_active_variables, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_resources}, spvc_set), compiler, resources, active)
end

function spvc_resources_get_resource_list_for_type(resources, type, resource_list, resource_size)
    ccall((:spvc_resources_get_resource_list_for_type, libspirv_cross), spvc_result, (spvc_resources, spvc_resource_type, Ptr{Ptr{spvc_reflected_resource}}, Ptr{Cint}), resources, type, resource_list, resource_size)
end

function spvc_compiler_set_decoration(compiler, id, decoration, argument)
    ccall((:spvc_compiler_set_decoration, libspirv_cross), Cvoid, (spvc_compiler, SpvId, SpvDecoration, UInt32), compiler, id, decoration, argument)
end

function spvc_compiler_set_decoration_string(compiler, id, decoration, argument)
    ccall((:spvc_compiler_set_decoration_string, libspirv_cross), Cvoid, (spvc_compiler, SpvId, SpvDecoration, Cstring), compiler, id, decoration, argument)
end

function spvc_compiler_set_name(compiler, id, argument)
    ccall((:spvc_compiler_set_name, libspirv_cross), Cvoid, (spvc_compiler, SpvId, Cstring), compiler, id, argument)
end

function spvc_compiler_set_member_decoration(compiler, id, member_index, decoration, argument)
    ccall((:spvc_compiler_set_member_decoration, libspirv_cross), Cvoid, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration, UInt32), compiler, id, member_index, decoration, argument)
end

function spvc_compiler_set_member_decoration_string(compiler, id, member_index, decoration, argument)
    ccall((:spvc_compiler_set_member_decoration_string, libspirv_cross), Cvoid, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration, Cstring), compiler, id, member_index, decoration, argument)
end

function spvc_compiler_set_member_name(compiler, id, member_index, argument)
    ccall((:spvc_compiler_set_member_name, libspirv_cross), Cvoid, (spvc_compiler, spvc_type_id, UInt32, Cstring), compiler, id, member_index, argument)
end

function spvc_compiler_unset_decoration(compiler, id, decoration)
    ccall((:spvc_compiler_unset_decoration, libspirv_cross), Cvoid, (spvc_compiler, SpvId, SpvDecoration), compiler, id, decoration)
end

function spvc_compiler_unset_member_decoration(compiler, id, member_index, decoration)
    ccall((:spvc_compiler_unset_member_decoration, libspirv_cross), Cvoid, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration), compiler, id, member_index, decoration)
end

function spvc_compiler_has_decoration(compiler, id, decoration)
    ccall((:spvc_compiler_has_decoration, libspirv_cross), spvc_bool, (spvc_compiler, SpvId, SpvDecoration), compiler, id, decoration)
end

function spvc_compiler_has_member_decoration(compiler, id, member_index, decoration)
    ccall((:spvc_compiler_has_member_decoration, libspirv_cross), spvc_bool, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration), compiler, id, member_index, decoration)
end

function spvc_compiler_get_name(compiler, id)
    ccall((:spvc_compiler_get_name, libspirv_cross), Cstring, (spvc_compiler, SpvId), compiler, id)
end

function spvc_compiler_get_decoration(compiler, id, decoration)
    ccall((:spvc_compiler_get_decoration, libspirv_cross), UInt32, (spvc_compiler, SpvId, SpvDecoration), compiler, id, decoration)
end

function spvc_compiler_get_decoration_string(compiler, id, decoration)
    ccall((:spvc_compiler_get_decoration_string, libspirv_cross), Cstring, (spvc_compiler, SpvId, SpvDecoration), compiler, id, decoration)
end

function spvc_compiler_get_member_decoration(compiler, id, member_index, decoration)
    ccall((:spvc_compiler_get_member_decoration, libspirv_cross), UInt32, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration), compiler, id, member_index, decoration)
end

function spvc_compiler_get_member_decoration_string(compiler, id, member_index, decoration)
    ccall((:spvc_compiler_get_member_decoration_string, libspirv_cross), Cstring, (spvc_compiler, spvc_type_id, UInt32, SpvDecoration), compiler, id, member_index, decoration)
end

function spvc_compiler_get_member_name(compiler, id, member_index)
    ccall((:spvc_compiler_get_member_name, libspirv_cross), Cstring, (spvc_compiler, spvc_type_id, UInt32), compiler, id, member_index)
end

function spvc_compiler_get_entry_points(compiler, entry_points, num_entry_points)
    ccall((:spvc_compiler_get_entry_points, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{spvc_entry_point}}, Ptr{Cint}), compiler, entry_points, num_entry_points)
end

function spvc_compiler_set_entry_point(compiler, name, model)
    ccall((:spvc_compiler_set_entry_point, libspirv_cross), spvc_result, (spvc_compiler, Cstring, SpvExecutionModel), compiler, name, model)
end

function spvc_compiler_rename_entry_point(compiler, old_name, new_name, model)
    ccall((:spvc_compiler_rename_entry_point, libspirv_cross), spvc_result, (spvc_compiler, Cstring, Cstring, SpvExecutionModel), compiler, old_name, new_name, model)
end

function spvc_compiler_get_cleansed_entry_point_name(compiler, name, model)
    ccall((:spvc_compiler_get_cleansed_entry_point_name, libspirv_cross), Cstring, (spvc_compiler, Cstring, SpvExecutionModel), compiler, name, model)
end

function spvc_compiler_set_execution_mode(compiler, mode)
    ccall((:spvc_compiler_set_execution_mode, libspirv_cross), Cvoid, (spvc_compiler, SpvExecutionMode), compiler, mode)
end

function spvc_compiler_unset_execution_mode(compiler, mode)
    ccall((:spvc_compiler_unset_execution_mode, libspirv_cross), Cvoid, (spvc_compiler, SpvExecutionMode), compiler, mode)
end

function spvc_compiler_set_execution_mode_with_arguments(compiler, mode, arg0, arg1, arg2)
    ccall((:spvc_compiler_set_execution_mode_with_arguments, libspirv_cross), Cvoid, (spvc_compiler, SpvExecutionMode, UInt32, UInt32, UInt32), compiler, mode, arg0, arg1, arg2)
end

function spvc_compiler_get_execution_modes(compiler, modes, num_modes)
    ccall((:spvc_compiler_get_execution_modes, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{SpvExecutionMode}}, Ptr{Cint}), compiler, modes, num_modes)
end

function spvc_compiler_get_execution_mode_argument(compiler, mode)
    ccall((:spvc_compiler_get_execution_mode_argument, libspirv_cross), UInt32, (spvc_compiler, SpvExecutionMode), compiler, mode)
end

function spvc_compiler_get_execution_mode_argument_by_index(compiler, mode, index)
    ccall((:spvc_compiler_get_execution_mode_argument_by_index, libspirv_cross), UInt32, (spvc_compiler, SpvExecutionMode, UInt32), compiler, mode, index)
end

function spvc_compiler_get_execution_model(compiler)
    ccall((:spvc_compiler_get_execution_model, libspirv_cross), SpvExecutionModel, (spvc_compiler,), compiler)
end

function spvc_compiler_get_type_handle(compiler, id)
    ccall((:spvc_compiler_get_type_handle, libspirv_cross), spvc_type, (spvc_compiler, spvc_type_id), compiler, id)
end

function spvc_type_get_base_type_id(type)
    ccall((:spvc_type_get_base_type_id, libspirv_cross), spvc_type_id, (spvc_type,), type)
end

function spvc_type_get_basetype(type)
    ccall((:spvc_type_get_basetype, libspirv_cross), spvc_basetype, (spvc_type,), type)
end

function spvc_type_get_bit_width(type)
    ccall((:spvc_type_get_bit_width, libspirv_cross), UInt32, (spvc_type,), type)
end

function spvc_type_get_vector_size(type)
    ccall((:spvc_type_get_vector_size, libspirv_cross), UInt32, (spvc_type,), type)
end

function spvc_type_get_columns(type)
    ccall((:spvc_type_get_columns, libspirv_cross), UInt32, (spvc_type,), type)
end

function spvc_type_get_num_array_dimensions(type)
    ccall((:spvc_type_get_num_array_dimensions, libspirv_cross), UInt32, (spvc_type,), type)
end

function spvc_type_array_dimension_is_literal(type, dimension)
    ccall((:spvc_type_array_dimension_is_literal, libspirv_cross), spvc_bool, (spvc_type, UInt32), type, dimension)
end

function spvc_type_get_array_dimension(type, dimension)
    ccall((:spvc_type_get_array_dimension, libspirv_cross), SpvId, (spvc_type, UInt32), type, dimension)
end

function spvc_type_get_num_member_types(type)
    ccall((:spvc_type_get_num_member_types, libspirv_cross), UInt32, (spvc_type,), type)
end

function spvc_type_get_member_type(type, index)
    ccall((:spvc_type_get_member_type, libspirv_cross), spvc_type_id, (spvc_type, UInt32), type, index)
end

function spvc_type_get_storage_class(type)
    ccall((:spvc_type_get_storage_class, libspirv_cross), SpvStorageClass, (spvc_type,), type)
end

function spvc_type_get_image_sampled_type(type)
    ccall((:spvc_type_get_image_sampled_type, libspirv_cross), spvc_type_id, (spvc_type,), type)
end

function spvc_type_get_image_dimension(type)
    ccall((:spvc_type_get_image_dimension, libspirv_cross), SpvDim, (spvc_type,), type)
end

function spvc_type_get_image_is_depth(type)
    ccall((:spvc_type_get_image_is_depth, libspirv_cross), spvc_bool, (spvc_type,), type)
end

function spvc_type_get_image_arrayed(type)
    ccall((:spvc_type_get_image_arrayed, libspirv_cross), spvc_bool, (spvc_type,), type)
end

function spvc_type_get_image_multisampled(type)
    ccall((:spvc_type_get_image_multisampled, libspirv_cross), spvc_bool, (spvc_type,), type)
end

function spvc_type_get_image_is_storage(type)
    ccall((:spvc_type_get_image_is_storage, libspirv_cross), spvc_bool, (spvc_type,), type)
end

function spvc_type_get_image_storage_format(type)
    ccall((:spvc_type_get_image_storage_format, libspirv_cross), SpvImageFormat, (spvc_type,), type)
end

function spvc_type_get_image_access_qualifier(type)
    ccall((:spvc_type_get_image_access_qualifier, libspirv_cross), SpvAccessQualifier, (spvc_type,), type)
end

function spvc_compiler_get_declared_struct_size(compiler, struct_type, size)
    ccall((:spvc_compiler_get_declared_struct_size, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, Ptr{Cint}), compiler, struct_type, size)
end

function spvc_compiler_get_declared_struct_size_runtime_array(compiler, struct_type, array_size, size)
    ccall((:spvc_compiler_get_declared_struct_size_runtime_array, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, Cint, Ptr{Cint}), compiler, struct_type, array_size, size)
end

function spvc_compiler_get_declared_struct_member_size(compiler, type, index, size)
    ccall((:spvc_compiler_get_declared_struct_member_size, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, UInt32, Ptr{Cint}), compiler, type, index, size)
end

function spvc_compiler_type_struct_member_offset(compiler, type, index, offset)
    ccall((:spvc_compiler_type_struct_member_offset, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, UInt32, Ptr{UInt32}), compiler, type, index, offset)
end

function spvc_compiler_type_struct_member_array_stride(compiler, type, index, stride)
    ccall((:spvc_compiler_type_struct_member_array_stride, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, UInt32, Ptr{UInt32}), compiler, type, index, stride)
end

function spvc_compiler_type_struct_member_matrix_stride(compiler, type, index, stride)
    ccall((:spvc_compiler_type_struct_member_matrix_stride, libspirv_cross), spvc_result, (spvc_compiler, spvc_type, UInt32, Ptr{UInt32}), compiler, type, index, stride)
end

function spvc_compiler_build_dummy_sampler_for_combined_images(compiler, id)
    ccall((:spvc_compiler_build_dummy_sampler_for_combined_images, libspirv_cross), spvc_result, (spvc_compiler, Ptr{spvc_variable_id}), compiler, id)
end

function spvc_compiler_build_combined_image_samplers(compiler)
    ccall((:spvc_compiler_build_combined_image_samplers, libspirv_cross), spvc_result, (spvc_compiler,), compiler)
end

function spvc_compiler_get_combined_image_samplers(compiler, samplers, num_samplers)
    ccall((:spvc_compiler_get_combined_image_samplers, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{spvc_combined_image_sampler}}, Ptr{Cint}), compiler, samplers, num_samplers)
end

function spvc_compiler_get_specialization_constants(compiler, constants, num_constants)
    ccall((:spvc_compiler_get_specialization_constants, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{spvc_specialization_constant}}, Ptr{Cint}), compiler, constants, num_constants)
end

function spvc_compiler_get_constant_handle(compiler, id)
    ccall((:spvc_compiler_get_constant_handle, libspirv_cross), spvc_constant, (spvc_compiler, spvc_constant_id), compiler, id)
end

function spvc_compiler_get_work_group_size_specialization_constants(compiler, x, y, z)
    ccall((:spvc_compiler_get_work_group_size_specialization_constants, libspirv_cross), spvc_constant_id, (spvc_compiler, Ptr{spvc_specialization_constant}, Ptr{spvc_specialization_constant}, Ptr{spvc_specialization_constant}), compiler, x, y, z)
end

function spvc_compiler_get_active_buffer_ranges(compiler, id, ranges, num_ranges)
    ccall((:spvc_compiler_get_active_buffer_ranges, libspirv_cross), spvc_result, (spvc_compiler, spvc_variable_id, Ptr{Ptr{spvc_buffer_range}}, Ptr{Cint}), compiler, id, ranges, num_ranges)
end

function spvc_constant_get_scalar_fp16(constant, column, row)
    ccall((:spvc_constant_get_scalar_fp16, libspirv_cross), Cfloat, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_fp32(constant, column, row)
    ccall((:spvc_constant_get_scalar_fp32, libspirv_cross), Cfloat, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_fp64(constant, column, row)
    ccall((:spvc_constant_get_scalar_fp64, libspirv_cross), Cdouble, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_u32(constant, column, row)
    ccall((:spvc_constant_get_scalar_u32, libspirv_cross), UInt32, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_i32(constant, column, row)
    ccall((:spvc_constant_get_scalar_i32, libspirv_cross), Cint, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_u16(constant, column, row)
    ccall((:spvc_constant_get_scalar_u16, libspirv_cross), UInt32, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_i16(constant, column, row)
    ccall((:spvc_constant_get_scalar_i16, libspirv_cross), Cint, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_u8(constant, column, row)
    ccall((:spvc_constant_get_scalar_u8, libspirv_cross), UInt32, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_scalar_i8(constant, column, row)
    ccall((:spvc_constant_get_scalar_i8, libspirv_cross), Cint, (spvc_constant, UInt32, UInt32), constant, column, row)
end

function spvc_constant_get_subconstants(constant, constituents, count)
    ccall((:spvc_constant_get_subconstants, libspirv_cross), Cvoid, (spvc_constant, Ptr{Ptr{spvc_constant_id}}, Ptr{Cint}), constant, constituents, count)
end

function spvc_constant_get_type(constant)
    ccall((:spvc_constant_get_type, libspirv_cross), spvc_type_id, (spvc_constant,), constant)
end

function spvc_compiler_get_binary_offset_for_decoration(compiler, id, decoration, word_offset)
    ccall((:spvc_compiler_get_binary_offset_for_decoration, libspirv_cross), spvc_bool, (spvc_compiler, spvc_variable_id, SpvDecoration, Ptr{UInt32}), compiler, id, decoration, word_offset)
end

function spvc_compiler_buffer_is_hlsl_counter_buffer(compiler, id)
    ccall((:spvc_compiler_buffer_is_hlsl_counter_buffer, libspirv_cross), spvc_bool, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_buffer_get_hlsl_counter_buffer(compiler, id, counter_id)
    ccall((:spvc_compiler_buffer_get_hlsl_counter_buffer, libspirv_cross), spvc_bool, (spvc_compiler, spvc_variable_id, Ptr{spvc_variable_id}), compiler, id, counter_id)
end

function spvc_compiler_get_declared_capabilities(compiler, capabilities, num_capabilities)
    ccall((:spvc_compiler_get_declared_capabilities, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{SpvCapability}}, Ptr{Cint}), compiler, capabilities, num_capabilities)
end

function spvc_compiler_get_declared_extensions(compiler, extensions, num_extensions)
    ccall((:spvc_compiler_get_declared_extensions, libspirv_cross), spvc_result, (spvc_compiler, Ptr{Ptr{Cstring}}, Ptr{Cint}), compiler, extensions, num_extensions)
end

function spvc_compiler_get_remapped_declared_block_name(compiler, id)
    ccall((:spvc_compiler_get_remapped_declared_block_name, libspirv_cross), Cstring, (spvc_compiler, spvc_variable_id), compiler, id)
end

function spvc_compiler_get_buffer_block_decorations(compiler, id, decorations, num_decorations)
    ccall((:spvc_compiler_get_buffer_block_decorations, libspirv_cross), spvc_result, (spvc_compiler, spvc_variable_id, Ptr{Ptr{SpvDecoration}}, Ptr{Cint}), compiler, id, decorations, num_decorations)
end
