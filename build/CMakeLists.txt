cmake_minimum_required (VERSION 3.17)
set(CMAKE_CONFIGURATION_TYPES "Debug;RelWithDebInfo;Profile;Final") 

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project (3rdParty)

include (${CMAKE_CURRENT_SOURCE_DIR}/../../build/common.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_amdcompress.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_glfw.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_glm.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_cli11.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_doctest.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_fmt.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_function2.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_imgui.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_libretro.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_opus.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_rapidjson.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_robinmap.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_libsamplerate.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_spdlog.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_stb.cmake)
include (${CMAKE_CURRENT_SOURCE_DIR}/build_zstd.cmake)
	