
include_directories("${CMAKE_CURRENT_LIST_DIR}/../fmt/include")

set(FMT_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/color.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/core.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/format.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/format-inl.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/ostream.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/posix.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/printf.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/ranges.h
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/include/fmt/time.h
)

set(FMT_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/src/format.cc
    ${CMAKE_CURRENT_LIST_DIR}/../fmt/src/posix.cc
)

add_library(fmt OBJECT ${FMT_PUBLIC_HDRS} 
	${FMT_SRCS})
						
set_property(TARGET fmt APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET fmt APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

source_group("Public Headers" FILES ${FMT_PUBLIC_HDRS})
source_group("Source" FILES ${FMT_SRCS})