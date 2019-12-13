set(stb_root "${CMAKE_CURRENT_LIST_DIR}/../stb")

set(STB_PUBLIC_HDRS
    ${stb_root}/stb_image.h
    ${stb_root}/stb_image_resize.h
    ${stb_root}/stb_image_write.h
)

set(STB_SRCS
    ${stb_root}/src/stb_image.cpp
    ${stb_root}/src/stb_image_resize.cpp
    ${stb_root}/src/stb_image_write.cpp
)

set(STB_BUILD
    ${stb_root}/../build/build_stb.cmake
)

add_library(stb OBJECT 
  ${STB_PUBLIC_HDRS} 
	${STB_SRCS}
	${STB_BUILD}
)
						
set_property(TARGET stb APPEND PROPERTY FOLDER 3rdParty)

target_include_directories(stb PUBLIC "${stb_root}")

source_group("Public Headers" FILES ${STB_PUBLIC_HDRS})
source_group("Source" FILES ${STB_SRCS})
source_group("Build" FILES ${STB_BUILD})