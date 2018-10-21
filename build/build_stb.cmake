
include_directories("${CMAKE_CURRENT_LIST_DIR}/../stb")

set(STB_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../stb/stb_image.h
    ${CMAKE_CURRENT_LIST_DIR}/../stb/stb_image_resize.h
    ${CMAKE_CURRENT_LIST_DIR}/../stb/stb_image_write.h
)

set(STB_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../stb/src/stb_image.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../stb/src/stb_image_resize.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../stb/src/stb_image_write.cpp
)

add_library(stb OBJECT ${STB_PUBLIC_HDRS} 
	${STB_SRCS})
						
set_property(TARGET stb APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET stb APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

source_group("Public Headers" FILES ${STB_PUBLIC_HDRS})
source_group("Source" FILES ${STB_SRCS})