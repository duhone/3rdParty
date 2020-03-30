set(root "${CMAKE_CURRENT_LIST_DIR}/../fmt")

set(PUBLIC_HDRS
    ${root}/include/fmt/chrono.h
    ${root}/include/fmt/color.h
    ${root}/include/fmt/compile.h
    ${root}/include/fmt/core.h
    ${root}/include/fmt/format.h
    ${root}/include/fmt/format-inl.h
    ${root}/include/fmt/locale.h
    ${root}/include/fmt/ostream.h
    ${root}/include/fmt/posix.h
    ${root}/include/fmt/printf.h
    ${root}/include/fmt/ranges.h
    ${root}/include/fmt/safe-duration-cast.h
)

set(SRCS
    ${root}/src/format.cc
    ${root}/src/posix.cc
)

set(BUILD
    ${root}/../build/build_fmt.cmake
)

add_library(fmt OBJECT 
	${PUBLIC_HDRS} 
	${SRCS}
	${BUILD}
)
settings3rdParty(fmt)
						
target_include_directories(fmt SYSTEM PUBLIC "${root}/include")
