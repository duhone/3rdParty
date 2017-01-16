cmake_minimum_required (VERSION 2.6)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project (3rdParty)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /WX /W2 /std:c++latest /fp:fast /fp:except-")
SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /arch:AVX /Oi /Ot /sdl-")

include (${CMAKE_CURRENT_SOURCE_DIR}/build.cmake)
	