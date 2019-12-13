set(fmt_root "${CMAKE_CURRENT_LIST_DIR}/../fmt")

set(FMT_PUBLIC_HDRS
    ${fmt_root}/include/fmt/chrono.h
    ${fmt_root}/include/fmt/color.h
    ${fmt_root}/include/fmt/compile.h
    ${fmt_root}/include/fmt/core.h
    ${fmt_root}/include/fmt/format.h
    ${fmt_root}/include/fmt/format-inl.h
    ${fmt_root}/include/fmt/locale.h
    ${fmt_root}/include/fmt/ostream.h
    ${fmt_root}/include/fmt/posix.h
    ${fmt_root}/include/fmt/printf.h
    ${fmt_root}/include/fmt/ranges.h
    ${fmt_root}/include/fmt/safe-duration-cast.h
)

set(FMT_SRCS
    ${fmt_root}/src/format.cc
    ${fmt_root}/src/posix.cc
)

set(FMT_BUILD
    ${fmt_root}/../build/build_fmt.cmake
)

add_library(fmt OBJECT 
  ${FMT_PUBLIC_HDRS} 
	${FMT_SRCS}
	${FMT_BUILD}
)
						
set_property(TARGET fmt APPEND PROPERTY FOLDER 3rdParty)

target_include_directories(fmt PUBLIC "${fmt_root}/include")

source_group("Public Headers" FILES ${FMT_PUBLIC_HDRS})
source_group("Source" FILES ${FMT_SRCS})
source_group("Build" FILES ${FMT_BUILD})