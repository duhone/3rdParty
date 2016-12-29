cmake_minimum_required (VERSION 2.6)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project (3rdParty)

###############################################
#catch
###############################################
file(GLOB_RECURSE catch_inc "${PROJECT_SOURCE_DIR}/../catch/*.hpp")
list(APPEND catch_src ${catch_inc})

add_library(catch OBJECT ${catch_src})
						
set_property(TARGET catch APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET catch APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET catch APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				
###############################################
#libretro
###############################################
file(GLOB_RECURSE libretro_inc "${PROJECT_SOURCE_DIR}/../libretro/*.h")
list(APPEND libretro_src ${libretro_inc})

add_library(libretro OBJECT ${libretro_src})
						
set_property(TARGET libretro APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET libretro APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET libretro APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				
###############################################
#lz4
###############################################
add_library(lz4 OBJECT "${PROJECT_SOURCE_DIR}/../lz4/lib/lz4.h" 
	"${PROJECT_SOURCE_DIR}/../lz4/lib/lz4.c"
	"${PROJECT_SOURCE_DIR}/../lz4/lib/lz4hc.h"
	"${PROJECT_SOURCE_DIR}/../lz4/lib/lz4hc.c")
						
set_property(TARGET lz4 APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET lz4 APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
		
###############################################
#zlib
###############################################
set(ZLIB_PUBLIC_HDRS
    ${PROJECT_SOURCE_DIR}/../zlib/zconf.h
    ${PROJECT_SOURCE_DIR}/../zlib/zlib.h
)

set(ZLIB_PRIVATE_HDRS
    ${PROJECT_SOURCE_DIR}/../zlib/crc32.h
    ${PROJECT_SOURCE_DIR}/../zlib/deflate.h
    ${PROJECT_SOURCE_DIR}/../zlib/gzguts.h
    ${PROJECT_SOURCE_DIR}/../zlib/inffast.h
    ${PROJECT_SOURCE_DIR}/../zlib/inffixed.h
    ${PROJECT_SOURCE_DIR}/../zlib/inflate.h
    ${PROJECT_SOURCE_DIR}/../zlib/inftrees.h
    ${PROJECT_SOURCE_DIR}/../zlib/trees.h
    ${PROJECT_SOURCE_DIR}/../zlib/zutil.h
)

set(ZLIB_SRCS
    ${PROJECT_SOURCE_DIR}/../zlib/adler32.c
    ${PROJECT_SOURCE_DIR}/../zlib/compress.c
    ${PROJECT_SOURCE_DIR}/../zlib/crc32.c
    ${PROJECT_SOURCE_DIR}/../zlib/deflate.c
    ${PROJECT_SOURCE_DIR}/../zlib/gzclose.c
    ${PROJECT_SOURCE_DIR}/../zlib/gzlib.c
    ${PROJECT_SOURCE_DIR}/../zlib/gzread.c
    ${PROJECT_SOURCE_DIR}/../zlib/gzwrite.c
    ${PROJECT_SOURCE_DIR}/../zlib/inflate.c
    ${PROJECT_SOURCE_DIR}/../zlib/infback.c
    ${PROJECT_SOURCE_DIR}/../zlib/inftrees.c
    ${PROJECT_SOURCE_DIR}/../zlib/inffast.c
    ${PROJECT_SOURCE_DIR}/../zlib/trees.c
    ${PROJECT_SOURCE_DIR}/../zlib/uncompr.c
    ${PROJECT_SOURCE_DIR}/../zlib/zutil.c
)

add_library(zlib OBJECT ${ZLIB_PUBLIC_HDRS} 
	${ZLIB_PRIVATE_HDRS}
	${ZLIB_SRCS})
						
set_property(TARGET zlib APPEND PROPERTY FOLDER 3rdParty)
#zlib has a lot of warning, so w2
set_property(TARGET zlib APPEND PROPERTY COMPILE_FLAGS "-WX -W2")
			
###############################################
#lzma
###############################################
file(GLOB_RECURSE lzma_inc "${PROJECT_SOURCE_DIR}/../lzma/c/*.h")
file(GLOB_RECURSE lzma_src "${PROJECT_SOURCE_DIR}/../lzma/c/*.c")
list(APPEND lzma_src ${lzma_inc})

add_library(lzma OBJECT ${lzma_src})
						
set_property(TARGET lzma APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET lzma APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

###############################################
#zstd
###############################################
INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/../zstd/lib ${PROJECT_SOURCE_DIR}/../zstd/lib/common)

set(ZSTD_PUBLIC_HDRS
    ${PROJECT_SOURCE_DIR}/../zstd/lib/zstd.h
)

set(ZSTD_PRIVATE_HDRS
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/bitstream.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/error_private.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/zstd_errors.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/fse.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/huf.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/mem.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/zstd_internal.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/dictBuilder/zdict.h
    ${PROJECT_SOURCE_DIR}/../zstd/lib/deprecated/zbuff.h
)

set(ZSTD_SRCS
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/entropy_common.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/zstd_common.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/error_private.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/xxhash.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/common/fse_decompress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/compress/fse_compress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/compress/huf_compress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/compress/zstd_compress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/decompress/huf_decompress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/decompress/zstd_decompress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/dictBuilder/divsufsort.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/dictBuilder/zdict.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/deprecated/zbuff_compress.c
    ${PROJECT_SOURCE_DIR}/../zstd/lib/deprecated/zbuff_decompress.c
)

add_library(zstd OBJECT ${ZSTD_PUBLIC_HDRS} 
	${ZSTD_PRIVATE_HDRS}
	${ZSTD_SRCS})
						
set_property(TARGET zstd APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET zstd APPEND PROPERTY COMPILE_FLAGS "-WX -W3")
			
