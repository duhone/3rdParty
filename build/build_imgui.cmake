set(root "${CMAKE_CURRENT_LIST_DIR}/../imgui")

set(PUBLIC_HDRS
    ${root}/imgui.h
)

set(SRCS
    ${root}/imconfig.h
    ${root}/imgui_internal.h
    ${root}/imgui.cpp
    ${root}/imgui_draw.cpp
    ${root}/imgui_demo.cpp
)

set(BUILD
    ${root}/../build/build_imgui.cmake
)

add_library(imgui OBJECT 
    ${PUBLIC_HDRS} 
	${SRCS}
	${BUILD}
)

settings3rdParty(imgui)
						
target_include_directories(imgui SYSTEM PUBLIC "${root}")
