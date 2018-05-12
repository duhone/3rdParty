###############################################
#catch
###############################################
include_directories("${CMAKE_CURRENT_LIST_DIR}/../catch")

add_library(catch OBJECT "${CMAKE_CURRENT_LIST_DIR}/../catch/catch.hpp")
						
set_property(TARGET catch APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET catch APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET catch APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				
###############################################
#libretro
###############################################

include_directories("${CMAKE_CURRENT_LIST_DIR}/../libretro")

add_library(libretro OBJECT "${CMAKE_CURRENT_LIST_DIR}/../libretro/libretro.h")
						
set_property(TARGET libretro APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET libretro APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET libretro APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				
###############################################
#lz4
###############################################
include_directories("${CMAKE_CURRENT_LIST_DIR}/../lz4/lib")

add_library(lz4 OBJECT "${CMAKE_CURRENT_LIST_DIR}/../lz4/lib/lz4.h" 
	"${CMAKE_CURRENT_LIST_DIR}/../lz4/lib/lz4.c"
	"${CMAKE_CURRENT_LIST_DIR}/../lz4/lib/lz4hc.h"
	"${CMAKE_CURRENT_LIST_DIR}/../lz4/lib/lz4hc.c")
						
set_property(TARGET lz4 APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET lz4 APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
		
###############################################
#zlib
###############################################

include_directories("${CMAKE_CURRENT_LIST_DIR}/../zlib")

set(ZLIB_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/zconf.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/zlib.h
)

set(ZLIB_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/crc32.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/deflate.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/gzguts.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inffast.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inffixed.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inflate.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inftrees.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/trees.h
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/zutil.h
)

set(ZLIB_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/adler32.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/compress.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/crc32.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/deflate.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/gzclose.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/gzlib.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/gzread.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/gzwrite.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inflate.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/infback.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inftrees.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/inffast.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/trees.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/uncompr.c
    ${CMAKE_CURRENT_LIST_DIR}/../zlib/zutil.c
)

add_library(zlib OBJECT ${ZLIB_PUBLIC_HDRS} 
	${ZLIB_PRIVATE_HDRS}
	${ZLIB_SRCS})
						
set_property(TARGET zlib APPEND PROPERTY FOLDER 3rdParty)
#zlib has a lot of warning, so w2
set_property(TARGET zlib APPEND PROPERTY COMPILE_FLAGS "-WX -W2")

source_group("Public Headers" FILES ${ZLIB_PUBLIC_HDRS})
source_group("Source" FILES ${ZLIB_PRIVATE_HDRS} ${ZLIB_SRCS})

			
###############################################
#lzma
###############################################

include_directories("${CMAKE_CURRENT_LIST_DIR}/../lzma/C")

set(LZMA_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaLib.h
)

set(LZMA_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/7zAlloc.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/7zTypes.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Alloc.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Bra.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Compiler.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzFind.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzFindMt.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzHash.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Lzma2Dec.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Lzma2Enc.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaDec.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaEnc.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/MtCoder.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Precomp.h
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Threads.h
)

set(LZMA_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/7zAlloc.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Alloc.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Bra.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzFind.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzFindMt.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Lzma2Dec.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Lzma2Enc.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaDec.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaEnc.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/LzmaLib.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/MtCoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../lzma/C/Threads.c
)

add_library(lzma OBJECT ${LZMA_PUBLIC_HDRS}
	${LZMA_PRIVATE_HDRS}
	${LZMA_SRCS})
						
set_property(TARGET lzma APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET lzma APPEND PROPERTY COMPILE_FLAGS "-WX -W3")

source_group("Public Headers" FILES ${LZMA_PUBLIC_HDRS})
source_group("Source" FILES ${LZMA_PRIVATE_HDRS} ${LZMA_SRCS})

###############################################
#zstd
###############################################

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
	