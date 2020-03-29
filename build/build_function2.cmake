set(root "${CMAKE_CURRENT_LIST_DIR}/../function2")

set(PUBLIC_HDRS
    ${root}/include/function2/function2.hpp
)

set(BUILD
    ${root}/../build/build_function2.cmake
)

add_library(function2 OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(function2)

set_property(TARGET function2 APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(function2 PUBLIC "${root}/include")
