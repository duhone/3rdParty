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
	
###############################################
#opus
###############################################

include_directories("${CMAKE_CURRENT_LIST_DIR}/../opus/include")
include_directories(PRIVATE "${CMAKE_CURRENT_LIST_DIR}/../opus/celt")
include_directories(PRIVATE "${CMAKE_CURRENT_LIST_DIR}/../opus/silk")
include_directories(PRIVATE "${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float")
include_directories(PRIVATE "${CMAKE_CURRENT_LIST_DIR}/../opus")

set(OPUS_PUBLIC_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/include/opus.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/include/opus_custom.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/include/opus_defines.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/include/opus_multistream.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/include/opus_types.h
)

set(OPUS_CELT_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arch.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/bands.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/cpu_support.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/cwrs.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/ecintrin.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entcode.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entdec.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entenc.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/fixed_debug.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/fixed_generic.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/float_cast.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/_kiss_fft_guts.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/kiss_fft.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/laplace.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mathops.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mdct.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mfrngcod.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/modes.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/os_support.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/pitch.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt_lpc.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/celt_lpc_sse.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/quant_bands.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/rate.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/stack_alloc.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/vq.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/static_modes_float.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/static_modes_fixed.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/static_modes_float_arm_ne10.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/static_modes_fixed_arm_ne10.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/armcpu.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/fixed_armv4.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/fixed_armv5e.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/fixed_arm64.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/kiss_fft_armv4.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/kiss_fft_armv5e.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/pitch_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/fft_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/mdct_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/celt_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/fixed_generic_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/kiss_fft_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/mdct_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/pitch_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mips/vq_mipsr1.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/pitch_sse.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/vq_sse.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/x86cpu.h
)

set(OPUS_CELT_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/bands.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt_encoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt_decoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/cwrs.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entcode.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entdec.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/entenc.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/kiss_fft.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/laplace.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mathops.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/mdct.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/modes.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/pitch.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/celt_lpc.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/quant_bands.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/rate.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/vq.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/x86cpu.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/x86_celt_map.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/pitch_sse.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/pitch_sse2.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/vq_sse2.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/celt_lpc_sse.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/x86/pitch_sse4_1.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/armcpu.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/arm_celt_map.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/celt_pitch_xcorr_arm.s
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/armopts.s.in
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/celt_neon_intr.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/pitch_neon_intr.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/celt_ne10_fft.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/celt/arm/celt_ne10_mdct.c
)

set(OPUS_SILK_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/debug.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/control.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/errors.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/API.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/typedef.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/define.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/main.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/main_sse.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/PLC.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/structs.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tuning_parameters.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/Inlines.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/MacroCount.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/MacroDebug.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/macros.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NSQ.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/pitch_est_defines.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_private.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_rom.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_structs.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/SigProc_FIX.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/SigProc_FIX_sse.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/biquad_alt_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/LPC_inv_pred_gain_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/macros_armv4.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/macros_armv5e.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/macros_arm64.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/SigProc_FIX_armv4.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/SigProc_FIX_armv5e.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/NSQ_del_dec_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/NSQ_neon.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/main_FIX.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/structs_FIX.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/arm/warped_autocorrelation_FIX_arm.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/mips/noise_shape_analysis_FIX_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/mips/warped_autocorrelation_FIX_mipsr1.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/main_FLP.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/structs_FLP.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/SigProc_FLP.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/mips/macros_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/mips/NSQ_del_dec_mipsr1.h
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/mips/sigproc_fix_mipsr1.h
)

set(OPUS_SILK_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/CNG.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/code_signs.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/init_decoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_core.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_frame.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_parameters.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_indices.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_pulses.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decoder_set_fs.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/dec_API.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/enc_API.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/encode_indices.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/encode_pulses.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/gain_quant.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/interpolate.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/LP_variable_cutoff.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_decode.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NSQ.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NSQ_del_dec.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/PLC.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/shell_coder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_gain.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_LTP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_NLSF_CB_NB_MB.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_NLSF_CB_WB.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_other.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_pitch_lag.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/tables_pulses_per_block.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/VAD.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/control_audio_bandwidth.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/quant_LTP_gains.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/VQ_WMat_EC.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/HP_variable_cutoff.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_encode.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_VQ.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_unpack.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_del_dec_quant.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/process_NLSFs.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_LR_to_MS.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_MS_to_LR.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/check_control_input.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/control_SNR.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/init_encoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/control_codec.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/A2NLSF.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/ana_filt_bank_1.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/biquad_alt.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/bwexpander_32.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/bwexpander.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/debug.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/decode_pitch.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/inner_prod_aligned.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/lin2log.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/log2lin.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/LPC_analysis_filter.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/LPC_inv_pred_gain.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/table_LSF_cos.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF2A.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_stabilize.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/NLSF_VQ_weights_laroia.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/pitch_est_tables.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_down2_3.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_down2.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_private_AR2.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_private_down_FIR.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_private_IIR_FIR.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_private_up2_HQ.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/resampler_rom.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/sigm_Q15.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/sort.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/sum_sqr_shift.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_decode_pred.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_encode_pred.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_find_predictor.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/stereo_quant_pred.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/LPC_fit.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/NSQ_sse.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/NSQ_del_dec_sse.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/x86_silk_map.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/VAD_sse.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/x86/VQ_WMat_EC_sse.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/arm_silk_map.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/biquad_alt_neon_intr.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/LPC_inv_pred_gain_neon_intr.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/NSQ_del_dec_neon_intr.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/arm/NSQ_neon.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/LTP_analysis_filter_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/LTP_scale_ctrl_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/corrMatrix_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/encode_frame_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/find_LPC_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/find_LTP_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/find_pitch_lags_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/find_pred_coefs_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/noise_shape_analysis_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/process_gains_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/regularize_correlations_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/residual_energy16_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/residual_energy_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/warped_autocorrelation_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/apply_sine_window_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/autocorr_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/burg_modified_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/k2a_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/k2a_Q16_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/pitch_analysis_core_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/vector_ops_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/schur64_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/schur_FIX.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/x86/vector_ops_FIX_sse.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/x86/burg_modified_FIX_sse.c
#    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/fixed/arm/warped_autocorrelation_FIX_neon_intr.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/apply_sine_window_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/corrMatrix_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/encode_frame_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/find_LPC_FLP.c 
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/find_LTP_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/find_pitch_lags_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/find_pred_coefs_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/LPC_analysis_filter_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/LTP_analysis_filter_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/LTP_scale_ctrl_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/noise_shape_analysis_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/process_gains_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/regularize_correlations_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/residual_energy_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/warped_autocorrelation_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/wrappers_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/autocorrelation_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/burg_modified_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/bwexpander_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/energy_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/inner_product_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/k2a_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/LPC_inv_pred_gain_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/pitch_analysis_core_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/scale_copy_vector_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/scale_vector_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/schur_FLP.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/silk/float/sort_FLP.c
)

set(OPUS_PRIVATE_HDRS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/config.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_private.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/analysis.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/mlp.h
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/tansig_table.h
)

set(OPUS_SRCS
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_decoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_encoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_multistream.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_multistream_encoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/opus_multistream_decoder.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/repacketizer.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/analysis.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/mlp.c
    ${CMAKE_CURRENT_LIST_DIR}/../opus/src/mlp_data.c
)

add_library(opus OBJECT ${OPUS_PUBLIC_HDRS} 
	${OPUS_CELT_PRIVATE_HDRS}
	${OPUS_CELT_SRCS}
	${OPUS_SILK_PRIVATE_HDRS}
	${OPUS_SILK_SRCS}
	${OPUS_PRIVATE_HDRS}
	${OPUS_SRCS})
						
set_property(TARGET opus APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET opus APPEND PROPERTY COMPILE_FLAGS "-WX -W1")

target_compile_definitions(opus PRIVATE HAVE_CONFIG_H=1)

source_group("Public Headers" FILES ${ZSTD_PUBLIC_HDRS})
source_group("Source" FILES ${OPUS_PRIVATE_HDRS} ${OPUS_SRCS})
source_group("Source\\Celt" FILES ${OPUS_CELT_PRIVATE_HDRS} ${OPUS_CELT_SRCS})
source_group("Source\\Silk" FILES ${OPUS_SILK_PRIVATE_HDRS} ${OPUS_SILK_SRCS})
	