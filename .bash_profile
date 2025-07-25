#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
# enforce RADV vulkan implementation
export AMD_VULKAN_ICD=RADV

# increase AMD and Intel cache size to 12GB
export MESA_SHADER_CACHE_MAX_SIZE=12G
