set(glfw_root "${CMAKE_CURRENT_LIST_DIR}/../glfw")

set(GLFW_PUBLIC_HDRS
    ${glfw_root}/include/GLFW/glfw3.h
)

set(GLFW_BUILD
    ${glfw_root}/../build/build_glfw.cmake
)

add_library(glfw OBJECT 
	${GLFW_PUBLIC_HDRS} 
	${GLFW_BUILD}
)

set_property(TARGET glfw APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET glfw APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(glfw PUBLIC "${glfw_root}/include")
target_compile_definitions(glfw PUBLIC GLFW_INCLUDE_NONE GLFW_INCLUDE_VULKAN GLFW_DLL GLFW_EXPOSE_NATIVE_WIN32)
target_link_libraries(glfw PUBLIC "${glfw_root}/lib-vc2019/glfw3dll.lib")

source_group("Public Headers" FILES ${GLFW_PUBLIC_HDRS})
source_group("Build" FILES ${GLFW_BUILD})

