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

target_include_directories(doctest SYSTEM PUBLIC "${root}")
target_compile_definitions(doctest PUBLIC DOCTEST_CONFIG_SUPER_FAST_ASSERTS)
target_compile_definitions(doctest PUBLIC DOCTEST_CONFIG_TREAT_CHAR_STAR_AS_STRING)
