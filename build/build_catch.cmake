set(catch_root "${CMAKE_CURRENT_LIST_DIR}/../catch")

set(CATCH_PUBLIC_HDRS
    ${catch_root}/catch.hpp
)

set(CATCH_BUILD
    ${catch_root}/../build/build_catch.cmake
)

add_library(catch OBJECT 
	${CATCH_PUBLIC_HDRS} 
	${CATCH_BUILD}
)

set_property(TARGET catch APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET catch APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(catch PUBLIC "${catch_root}")

source_group("Public Headers" FILES ${CATCH_PUBLIC_HDRS})
source_group("Build" FILES ${CATCH_BUILD})

		