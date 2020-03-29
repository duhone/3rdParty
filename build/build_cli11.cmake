set(root "${CMAKE_CURRENT_LIST_DIR}/../cli11")

set(PUBLIC_HDRS
    ${root}/cli11/cli11.hpp
)

set(BUILD
    ${root}/../build/build_cli11.cmake
)

add_library(cli11 OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)
settings3rdParty(cli11)

set_property(TARGET cli11 APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(cli11 PUBLIC "${root}")

		