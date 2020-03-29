set(root "${CMAKE_CURRENT_LIST_DIR}/../stb")

set(PUBLIC_HDRS
    ${root}/stb_image.h
    ${root}/stb_image_resize.h
    ${root}/stb_image_write.h
)

set(SRCS
    ${root}/src/stb_image.cpp
    ${root}/src/stb_image_resize.cpp
    ${root}/src/stb_image_write.cpp
)

set(BUILD
    ${root}/../build/build_stb.cmake
)

add_library(stb OBJECT 
	${PUBLIC_HDRS} 
	${SSRCS}
	${BUILD}
)
	
settings3rdParty(stb)					

set_property(TARGET stb APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(stb PUBLIC "${root}")
