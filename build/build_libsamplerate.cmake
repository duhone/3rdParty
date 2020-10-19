set(root "${CMAKE_CURRENT_LIST_DIR}/../libsamplerate/src")

set(PUBLIC_HDRS
    ${root}/samplerate.h
)

set(SRCS
    ${root}/../win32/config.h
    ${root}/common.h
    ${root}/fastest_coeffs.h
    ${root}/float_cast.h
    ${root}/high_qual_coeffs.h
    ${root}/mid_qual_coeffs.h
    ${root}/samplerate.c
    ${root}/src_linear.c
    ${root}/src_sinc.c
    ${root}/src_zoh.c
)

set(BUILD
    ${root}/../../build/build_libsamplerate.cmake
)

add_library(samplerate 
    ${PUBLIC_HDRS} 
	${SRCS}
	${BUILD}
)

settings3rdParty(samplerate)
						
target_include_directories(samplerate SYSTEM PRIVATE "${root}/../win32")
target_include_directories(samplerate SYSTEM PUBLIC "${root}")
