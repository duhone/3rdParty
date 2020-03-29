set(doctest_root "${CMAKE_CURRENT_LIST_DIR}/../doctest")

set(DOCTEST_PUBLIC_HDRS
    ${doctest_root}/doctest/doctest.h
)

set(DOCTEST_BUILD
    ${doctest_root}/../build/build_doctest.cmake
)

add_library(doctest OBJECT 
	${DOCTEST_PUBLIC_HDRS} 
	${DOCTEST_BUILD}
)

set_property(TARGET doctest APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET doctest APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(doctest PUBLIC "${doctest_root}/doctest")

source_group("Public Headers" FILES ${DOCTEST_PUBLIC_HDRS})
source_group("Build" FILES ${DOCTEST_BUILD})

		