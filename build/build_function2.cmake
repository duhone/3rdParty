set(function2_root "${CMAKE_CURRENT_LIST_DIR}/../function2")

set(FUNC2_PUBLIC_HDRS
    ${function2_root}/include/function2/function2.hpp
)

set(FUNC2_BUILD
    ${function2_root}/../build/build_function2.cmake
)

add_library(function2 OBJECT 
	${FUNC2_PUBLIC_HDRS} 
	${FUNC2_BUILD}
)

set_property(TARGET function2 APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET function2 APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(function2 PUBLIC "${function2_root}/include")

source_group("Public Headers" FILES ${FUNC2_PUBLIC_HDRS})
source_group("Build" FILES ${FUNC2_BUILD})

		