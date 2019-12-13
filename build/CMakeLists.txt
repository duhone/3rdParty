cmake_minimum_required (VERSION 2.6)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project (3rdParty)

include (${CMAKE_CURRENT_SOURCE_DIR}/../../core/build/common.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_glm.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_catch.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_opus.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_libretro.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_zstd.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_imgui.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_rapidjson.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_stb.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_fmt.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_spdlog.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_glfw.cmake)
	