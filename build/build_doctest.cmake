set(root "${CMAKE_CURRENT_LIST_DIR}/../doctest")

set(PUBLIC_HDRS
    ${root}/doctest/doctest.h
)

set(BUILD
    ${root}/../build/build_doctest.cmake
)

add_library(doctest OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)
settings3rdParty(doctest)

set_property(TARGET doctest APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(doctest PUBLIC "${root}/doctest")
