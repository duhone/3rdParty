set(imgui_root "${CMAKE_CURRENT_LIST_DIR}/../imgui")

set(IMGUI_PUBLIC_HDRS
    ${imgui_root}/imgui.h
)

set(IMGUI_SRCS
    ${imgui_root}/imconfig.h
    ${imgui_root}/imgui_internal.h
    ${imgui_root}/imgui.cpp
    ${imgui_root}/imgui_draw.cpp
    ${imgui_root}/imgui_demo.cpp
)

set(IMGUI_BUILD
    ${imgui_root}/../build/build_imgui.cmake
)

add_library(imgui OBJECT 
  ${IMGUI_PUBLIC_HDRS} 
	${IMGUI_SRCS}
	${IMGUI_BUILD}
)
						
set_property(TARGET imgui APPEND PROPERTY FOLDER 3rdParty)

target_include_directories(imgui PUBLIC "${imgui_root}")

source_group("Public Headers" FILES ${IMGUI_PUBLIC_HDRS})
source_group("Source" FILES ${IMGUI_SRCS})
source_group("Build" FILES ${IMGUI_BUILD})