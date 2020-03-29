set(root "${CMAKE_CURRENT_LIST_DIR}/../zstd/lib")

set(PUBLIC_HDRS
    ${root}/zstd.h
)

set(SRCS
    ${root}/common/bitstream.h
    ${root}/common/error_private.h
    ${root}/common/zstd_errors.h
    ${root}/common/fse.h
    ${root}/common/huf.h
    ${root}/common/mem.h
    ${root}/common/xxhash.h
    ${root}/common/zstd_internal.h
    ${root}/dictBuilder/zdict.h
    ${root}/deprecated/zbuff.h
    ${root}/common/entropy_common.c
    ${root}/common/zstd_common.c
    ${root}/common/error_private.c
    ${root}/common/xxhash.c
    ${root}/common/pool.c
    ${root}/common/fse_decompress.c
    ${root}/compress/fse_compress.c
    ${root}/compress/huf_compress.c
    ${root}/compress/zstd_compress.c
    ${root}/compress/zstd_opt.c
    ${root}/compress/zstd_ldm.c
    ${root}/compress/zstd_lazy.c
    ${root}/compress/zstd_fast.c
    ${root}/compress/zstd_double_fast.c
    ${root}/decompress/huf_decompress.c
    ${root}/decompress/zstd_decompress.c
    ${root}/dictBuilder/divsufsort.c
    ${root}/dictBuilder/zdict.c
    ${root}/dictBuilder/cover.c
    ${root}/deprecated/zbuff_compress.c
    ${root}/deprecated/zbuff_decompress.c
)

set(BUILD
    ${root}/../../build/build_zstd.cmake
)

add_library(zstd OBJECT 
	${PUBLIC_HDRS} 
	${SRCS}
	${BUILD}
)
				
settings3rdParty(zstd)	
		
target_include_directories(zstd PUBLIC "${root}")
target_include_directories(zstd PRIVATE "${root}/common")
