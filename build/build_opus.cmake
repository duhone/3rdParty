set(root "${CMAKE_CURRENT_LIST_DIR}/../opus")

set(PUBLIC_HDRS
    ${root}/include/opus.h
    ${root}/include/opus_custom.h
    ${root}/include/opus_defines.h
    ${root}/include/opus_multistream.h
    ${root}/include/opus_types.h
)

set(SRCS
    ${root}/celt/arch.h
    ${root}/celt/bands.h
    ${root}/celt/celt.h
    ${root}/celt/cpu_support.h
    ${root}/celt/cwrs.h
    ${root}/celt/ecintrin.h
    ${root}/celt/entcode.h
    ${root}/celt/entdec.h
    ${root}/celt/entenc.h
#    ${root}/celt/fixed_debug.h
#    ${root}/celt/fixed_generic.h
    ${root}/celt/float_cast.h
    ${root}/celt/_kiss_fft_guts.h
    ${root}/celt/kiss_fft.h
    ${root}/celt/laplace.h
    ${root}/celt/mathops.h
    ${root}/celt/mdct.h
    ${root}/celt/mfrngcod.h
    ${root}/celt/modes.h
    ${root}/celt/os_support.h
    ${root}/celt/pitch.h
    ${root}/celt/celt_lpc.h
    ${root}/celt/x86/celt_lpc_sse.h
    ${root}/celt/quant_bands.h
    ${root}/celt/rate.h
    ${root}/celt/stack_alloc.h
    ${root}/celt/vq.h
    ${root}/celt/static_modes_float.h
#    ${root}/celt/static_modes_fixed.h
    ${root}/celt/static_modes_float_arm_ne10.h
#    ${root}/celt/static_modes_fixed_arm_ne10.h
#    ${root}/celt/arm/armcpu.h
#    ${root}/celt/arm/fixed_armv4.h
#    ${root}/celt/arm/fixed_armv5e.h
#    ${root}/celt/arm/fixed_arm64.h
#    ${root}/celt/arm/kiss_fft_armv4.h
#    ${root}/celt/arm/kiss_fft_armv5e.h
#    ${root}/celt/arm/pitch_arm.h
#    ${root}/celt/arm/fft_arm.h
#    ${root}/celt/arm/mdct_arm.h
#    ${root}/celt/mips/celt_mipsr1.h
#    ${root}/celt/mips/fixed_generic_mipsr1.h
#    ${root}/celt/mips/kiss_fft_mipsr1.h
#    ${root}/celt/mips/mdct_mipsr1.h
#    ${root}/celt/mips/pitch_mipsr1.h
#    ${root}/celt/mips/vq_mipsr1.h
    ${root}/celt/x86/pitch_sse.h
    ${root}/celt/x86/vq_sse.h
    ${root}/celt/x86/x86cpu.h
    ${root}/celt/bands.c
    ${root}/celt/celt.c
    ${root}/celt/celt_encoder.c
    ${root}/celt/celt_decoder.c
    ${root}/celt/cwrs.c
    ${root}/celt/entcode.c
    ${root}/celt/entdec.c
    ${root}/celt/entenc.c
    ${root}/celt/kiss_fft.c
    ${root}/celt/laplace.c
    ${root}/celt/mathops.c
    ${root}/celt/mdct.c
    ${root}/celt/modes.c
    ${root}/celt/pitch.c
    ${root}/celt/celt_lpc.c
    ${root}/celt/quant_bands.c
    ${root}/celt/rate.c
    ${root}/celt/vq.c
    ${root}/celt/x86/x86cpu.c
    ${root}/celt/x86/x86_celt_map.c
    ${root}/celt/x86/pitch_sse.c
    ${root}/celt/x86/pitch_sse2.c
    ${root}/celt/x86/vq_sse2.c
    ${root}/celt/x86/celt_lpc_sse.c
    ${root}/celt/x86/pitch_sse4_1.c
#    ${root}/celt/arm/armcpu.c
#    ${root}/celt/arm/arm_celt_map.c
#    ${root}/celt/arm/celt_pitch_xcorr_arm.s
#    ${root}/celt/arm/armopts.s.in
#    ${root}/celt/arm/celt_neon_intr.c
#    ${root}/celt/arm/pitch_neon_intr.c
#    ${root}/celt/arm/celt_ne10_fft.c
#    ${root}/celt/arm/celt_ne10_mdct.c
    ${root}/silk/debug.h
    ${root}/silk/control.h
    ${root}/silk/errors.h
    ${root}/silk/API.h
    ${root}/silk/typedef.h
    ${root}/silk/define.h
    ${root}/silk/main.h
    ${root}/silk/x86/main_sse.h
    ${root}/silk/PLC.h
    ${root}/silk/structs.h
    ${root}/silk/tables.h
    ${root}/silk/tuning_parameters.h
    ${root}/silk/Inlines.h
    ${root}/silk/MacroCount.h
    ${root}/silk/MacroDebug.h
    ${root}/silk/macros.h
    ${root}/silk/NSQ.h
    ${root}/silk/pitch_est_defines.h
    ${root}/silk/resampler_private.h
    ${root}/silk/resampler_rom.h
    ${root}/silk/resampler_structs.h
    ${root}/silk/SigProc_FIX.h
    ${root}/silk/x86/SigProc_FIX_sse.h
#    ${root}/silk/arm/biquad_alt_arm.h
#    ${root}/silk/arm/LPC_inv_pred_gain_arm.h
#    ${root}/silk/arm/macros_armv4.h
#    ${root}/silk/arm/macros_armv5e.h
#    ${root}/silk/arm/macros_arm64.h
#    ${root}/silk/arm/SigProc_FIX_armv4.h
#    ${root}/silk/arm/SigProc_FIX_armv5e.h
#    ${root}/silk/arm/NSQ_del_dec_arm.h
#    ${root}/silk/arm/NSQ_neon.h
#    ${root}/silk/fixed/main_FIX.h
#    ${root}/silk/fixed/structs_FIX.h
#    ${root}/silk/fixed/arm/warped_autocorrelation_FIX_arm.h
#    ${root}/silk/fixed/mips/noise_shape_analysis_FIX_mipsr1.h
#    ${root}/silk/fixed/mips/warped_autocorrelation_FIX_mipsr1.h
    ${root}/silk/float/main_FLP.h
    ${root}/silk/float/structs_FLP.h
    ${root}/silk/float/SigProc_FLP.h
#    ${root}/silk/mips/macros_mipsr1.h
#    ${root}/silk/mips/NSQ_del_dec_mipsr1.h
#    ${root}/silk/mips/sigproc_fix_mipsr1.h
    ${root}/silk/CNG.c
    ${root}/silk/code_signs.c
    ${root}/silk/init_decoder.c
    ${root}/silk/decode_core.c
    ${root}/silk/decode_frame.c
    ${root}/silk/decode_parameters.c
    ${root}/silk/decode_indices.c
    ${root}/silk/decode_pulses.c
    ${root}/silk/decoder_set_fs.c
    ${root}/silk/dec_API.c
    ${root}/silk/enc_API.c
    ${root}/silk/encode_indices.c
    ${root}/silk/encode_pulses.c
    ${root}/silk/gain_quant.c
    ${root}/silk/interpolate.c
    ${root}/silk/LP_variable_cutoff.c
    ${root}/silk/NLSF_decode.c
    ${root}/silk/NSQ.c
    ${root}/silk/NSQ_del_dec.c
    ${root}/silk/PLC.c
    ${root}/silk/shell_coder.c
    ${root}/silk/tables_gain.c
    ${root}/silk/tables_LTP.c
    ${root}/silk/tables_NLSF_CB_NB_MB.c
    ${root}/silk/tables_NLSF_CB_WB.c
    ${root}/silk/tables_other.c
    ${root}/silk/tables_pitch_lag.c
    ${root}/silk/tables_pulses_per_block.c
    ${root}/silk/VAD.c
    ${root}/silk/control_audio_bandwidth.c
    ${root}/silk/quant_LTP_gains.c
    ${root}/silk/VQ_WMat_EC.c
    ${root}/silk/HP_variable_cutoff.c
    ${root}/silk/NLSF_encode.c
    ${root}/silk/NLSF_VQ.c
    ${root}/silk/NLSF_unpack.c
    ${root}/silk/NLSF_del_dec_quant.c
    ${root}/silk/process_NLSFs.c
    ${root}/silk/stereo_LR_to_MS.c
    ${root}/silk/stereo_MS_to_LR.c
    ${root}/silk/check_control_input.c
    ${root}/silk/control_SNR.c
    ${root}/silk/init_encoder.c
    ${root}/silk/control_codec.c
    ${root}/silk/A2NLSF.c
    ${root}/silk/ana_filt_bank_1.c
    ${root}/silk/biquad_alt.c
    ${root}/silk/bwexpander_32.c
    ${root}/silk/bwexpander.c
    ${root}/silk/debug.c
    ${root}/silk/decode_pitch.c
    ${root}/silk/inner_prod_aligned.c
    ${root}/silk/lin2log.c
    ${root}/silk/log2lin.c
    ${root}/silk/LPC_analysis_filter.c
    ${root}/silk/LPC_inv_pred_gain.c
    ${root}/silk/table_LSF_cos.c
    ${root}/silk/NLSF2A.c
    ${root}/silk/NLSF_stabilize.c
    ${root}/silk/NLSF_VQ_weights_laroia.c
    ${root}/silk/pitch_est_tables.c
    ${root}/silk/resampler.c
    ${root}/silk/resampler_down2_3.c
    ${root}/silk/resampler_down2.c
    ${root}/silk/resampler_private_AR2.c
    ${root}/silk/resampler_private_down_FIR.c
    ${root}/silk/resampler_private_IIR_FIR.c
    ${root}/silk/resampler_private_up2_HQ.c
    ${root}/silk/resampler_rom.c
    ${root}/silk/sigm_Q15.c
    ${root}/silk/sort.c
    ${root}/silk/sum_sqr_shift.c
    ${root}/silk/stereo_decode_pred.c
    ${root}/silk/stereo_encode_pred.c
    ${root}/silk/stereo_find_predictor.c
    ${root}/silk/stereo_quant_pred.c
    ${root}/silk/LPC_fit.c
    ${root}/silk/x86/NSQ_sse.c
    ${root}/silk/x86/NSQ_del_dec_sse.c
    ${root}/silk/x86/x86_silk_map.c
    ${root}/silk/x86/VAD_sse.c
    ${root}/silk/x86/VQ_WMat_EC_sse.c
#    ${root}/silk/arm/arm_silk_map.c
#    ${root}/silk/arm/biquad_alt_neon_intr.c
#    ${root}/silk/arm/LPC_inv_pred_gain_neon_intr.c
#    ${root}/silk/arm/NSQ_del_dec_neon_intr.c
#    ${root}/silk/arm/NSQ_neon.c
#    ${root}/silk/fixed/LTP_analysis_filter_FIX.c
#    ${root}/silk/fixed/LTP_scale_ctrl_FIX.c
#    ${root}/silk/fixed/corrMatrix_FIX.c
#    ${root}/silk/fixed/encode_frame_FIX.c
#    ${root}/silk/fixed/find_LPC_FIX.c
#    ${root}/silk/fixed/find_LTP_FIX.c
#    ${root}/silk/fixed/find_pitch_lags_FIX.c
#    ${root}/silk/fixed/find_pred_coefs_FIX.c
#    ${root}/silk/fixed/noise_shape_analysis_FIX.c
#    ${root}/silk/fixed/process_gains_FIX.c
#    ${root}/silk/fixed/regularize_correlations_FIX.c
#    ${root}/silk/fixed/residual_energy16_FIX.c
#    ${root}/silk/fixed/residual_energy_FIX.c
#    ${root}/silk/fixed/warped_autocorrelation_FIX.c
#    ${root}/silk/fixed/apply_sine_window_FIX.c
#    ${root}/silk/fixed/autocorr_FIX.c
#    ${root}/silk/fixed/burg_modified_FIX.c
#    ${root}/silk/fixed/k2a_FIX.c
#    ${root}/silk/fixed/k2a_Q16_FIX.c
#    ${root}/silk/fixed/pitch_analysis_core_FIX.c
#    ${root}/silk/fixed/vector_ops_FIX.c
#    ${root}/silk/fixed/schur64_FIX.c
#    ${root}/silk/fixed/schur_FIX.c
#    ${root}/silk/fixed/x86/vector_ops_FIX_sse.c
#    ${root}/silk/fixed/x86/burg_modified_FIX_sse.c
#    ${root}/silk/fixed/arm/warped_autocorrelation_FIX_neon_intr.c
    ${root}/silk/float/apply_sine_window_FLP.c
    ${root}/silk/float/corrMatrix_FLP.c
    ${root}/silk/float/encode_frame_FLP.c
    ${root}/silk/float/find_LPC_FLP.c 
    ${root}/silk/float/find_LTP_FLP.c
    ${root}/silk/float/find_pitch_lags_FLP.c
    ${root}/silk/float/find_pred_coefs_FLP.c
    ${root}/silk/float/LPC_analysis_filter_FLP.c
    ${root}/silk/float/LTP_analysis_filter_FLP.c
    ${root}/silk/float/LTP_scale_ctrl_FLP.c
    ${root}/silk/float/noise_shape_analysis_FLP.c
    ${root}/silk/float/process_gains_FLP.c
    ${root}/silk/float/regularize_correlations_FLP.c
    ${root}/silk/float/residual_energy_FLP.c
    ${root}/silk/float/warped_autocorrelation_FLP.c
    ${root}/silk/float/wrappers_FLP.c
    ${root}/silk/float/autocorrelation_FLP.c
    ${root}/silk/float/burg_modified_FLP.c
    ${root}/silk/float/bwexpander_FLP.c
    ${root}/silk/float/energy_FLP.c
    ${root}/silk/float/inner_product_FLP.c
    ${root}/silk/float/k2a_FLP.c
    ${root}/silk/float/LPC_inv_pred_gain_FLP.c
    ${root}/silk/float/pitch_analysis_core_FLP.c
    ${root}/silk/float/scale_copy_vector_FLP.c
    ${root}/silk/float/scale_vector_FLP.c
    ${root}/silk/float/schur_FLP.c
    ${root}/silk/float/sort_FLP.c
	
    ${root}/config.h
    ${root}/src/opus_private.h
    ${root}/src/analysis.h
    ${root}/src/mlp.h
    ${root}/src/tansig_table.h
	
    ${root}/src/opus.c
    ${root}/src/opus_decoder.c
    ${root}/src/opus_encoder.c
    ${root}/src/opus_multistream.c
    ${root}/src/opus_multistream_encoder.c
    ${root}/src/opus_multistream_decoder.c
    ${root}/src/repacketizer.c
    ${root}/src/analysis.c
    ${root}/src/mlp.c
    ${root}/src/mlp_data.c
)

set(BUILD
    ${root}/../build/build_opus.cmake
)

add_library(opus OBJECT 
	${PUBLIC_HDRS} 
	${SRCS}
	${BUILD})
			
settings3rdParty(opus)
			
target_compile_definitions(opus PRIVATE HAVE_CONFIG_H=1)

target_include_directories(opus PUBLIC "${root}/../opus/include")
target_include_directories(opus PRIVATE "${root}/../opus/celt")
target_include_directories(opus PRIVATE "${root}/../opus/silk")
target_include_directories(opus PRIVATE "${root}/../opus/silk/float")
target_include_directories(opus PRIVATE "${root}/../opus")

	