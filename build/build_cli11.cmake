set(cli11_root "${CMAKE_CURRENT_LIST_DIR}/../cli11")

set(CLI11_PUBLIC_HDRS
    ${cli11_root}/cli11/cli11.hpp
)

set(CLI11_BUILD
    ${cli11_root}/../build/build_cli11.cmake
)

add_library(cli11 OBJECT 
	${CLI11_PUBLIC_HDRS} 
	${CLI11_BUILD}
)

set_property(TARGET cli11 APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET cli11 APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(cli11 PUBLIC "${cli11_root}")

source_group("Public Headers" FILES ${CLI11_PUBLIC_HDRS})
source_group("Build" FILES ${CLI11_BUILD})

		