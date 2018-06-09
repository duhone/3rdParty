
include_directories("${CMAKE_CURRENT_LIST_DIR}/../zstd/lib")

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_LIST_DIR}/../zstd/lib ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common)

set(ZSTD_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/zstd.h
)

set(ZSTD_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/bitstream.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/error_private.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/zstd_errors.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/fse.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/huf.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/mem.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/xxhash.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/zstd_internal.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/dictBuilder/zdict.h
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/deprecated/zbuff.h
)

set(ZSTD_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/entropy_common.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/zstd_common.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/error_private.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/xxhash.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/common/fse_decompress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/compress/fse_compress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/compress/huf_compress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/compress/zstd_compress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/decompress/huf_decompress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/decompress/zstd_decompress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/dictBuilder/divsufsort.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/dictBuilder/zdict.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/deprecated/zbuff_compress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zstd/lib/deprecated/zbuff_decompress.c
)

add_library(zstd OBJECT ${ZSTD_PUBLIC_HDRS} 
	${ZSTD_PRIVATE_HDRS}
	${ZSTD_SRCS})
						
set_property(TARGET zstd APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET zstd APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

source_group("Public Headers" FILES ${ZSTD_PUBLIC_HDRS})
source_group("Source" FILES ${ZSTD_PRIVATE_HDRS} ${ZSTD_SRCS})