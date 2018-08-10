
include_directories("${CMAKE_CURRENT_LIST_DIR}/../imgui")

set(IMGUI_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imgui.h
)

set(IMGUI_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imconfig.h
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imgui_internal.h
)

set(IMGUI_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imgui.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imgui_draw.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../imgui/imgui_demo.cpp
)

add_library(imgui OBJECT ${IMGUI_PUBLIC_HDRS} 
	${IMGUI_SRCS})
						
set_property(TARGET imgui APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET imgui APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

source_group("Public Headers" FILES ${IMGUI_PUBLIC_HDRS})
source_group("Source" FILES ${IMGUI_PRIVATE_HDRS} ${IMGUI_SRCS})