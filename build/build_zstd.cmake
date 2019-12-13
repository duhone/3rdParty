set(zstd_root "${CMAKE_CURRENT_LIST_DIR}/../zstd/lib")

set(ZSTD_PUBLIC_HDRS
    ${zstd_root}/zstd.h
)

set(ZSTD_SRCS
    ${zstd_root}/common/bitstream.h
    ${zstd_root}/common/error_private.h
    ${zstd_root}/common/zstd_errors.h
    ${zstd_root}/common/fse.h
    ${zstd_root}/common/huf.h
    ${zstd_root}/common/mem.h
    ${zstd_root}/common/xxhash.h
    ${zstd_root}/common/zstd_internal.h
    ${zstd_root}/dictBuilder/zdict.h
    ${zstd_root}/deprecated/zbuff.h
    ${zstd_root}/common/entropy_common.c
    ${zstd_root}/common/zstd_common.c
    ${zstd_root}/common/error_private.c
    ${zstd_root}/common/xxhash.c
    ${zstd_root}/common/pool.c
    ${zstd_root}/common/fse_decompress.c
    ${zstd_root}/compress/fse_compress.c
    ${zstd_root}/compress/huf_compress.c
    ${zstd_root}/compress/zstd_compress.c
    ${zstd_root}/compress/zstd_opt.c
    ${zstd_root}/compress/zstd_ldm.c
    ${zstd_root}/compress/zstd_lazy.c
    ${zstd_root}/compress/zstd_fast.c
    ${zstd_root}/compress/zstd_double_fast.c
    ${zstd_root}/decompress/huf_decompress.c
    ${zstd_root}/decompress/zstd_decompress.c
    ${zstd_root}/dictBuilder/divsufsort.c
    ${zstd_root}/dictBuilder/zdict.c
    ${zstd_root}/dictBuilder/cover.c
    ${zstd_root}/deprecated/zbuff_compress.c
    ${zstd_root}/deprecated/zbuff_decompress.c
)

set(ZSTD_BUILD
    ${zstd_root}/../../build/build_zstd.cmake
)

add_library(zstd OBJECT 
  ${ZSTD_PUBLIC_HDRS} 
	${ZSTD_SRCS}
	${ZSTD_BUILD}
)
						
set_property(TARGET zstd APPEND PROPERTY FOLDER 3rdParty)

target_include_directories(zstd PUBLIC "${zstd_root}")
target_include_directories(zstd PRIVATE "${zstd_root}/common")

source_group("Public Headers" FILES ${ZSTD_PUBLIC_HDRS})
source_group("Source" FILES ${ZSTD_PRIVATE_HDRS} ${ZSTD_SRCS})
source_group("Build" FILES ${ZSTD_BUILD})