set(root "${CMAKE_CURRENT_LIST_DIR}/../glfw")

set(PUBLIC_HDRS
    ${root}/include/GLFW/glfw3.h
)

set(BUILD
    ${root}/../build/build_glfw.cmake
)

add_library(glfw OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(glfw)

set_property(TARGET glfw APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(glfw SYSTEM PUBLIC "${root}/include")
target_compile_definitions(glfw PUBLIC GLFW_INCLUDE_NONE GLFW_INCLUDE_VULKAN GLFW_DLL GLFW_EXPOSE_NATIVE_WIN32)
target_link_libraries(glfw PUBLIC "${root}/lib-vc2019/glfw3dll.lib")

set(glfw_dll "${root}/lib-vc2019/glfw3.dll")

