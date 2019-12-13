set(spdlog_root "${CMAKE_CURRENT_LIST_DIR}/../spdlog")

set(SPDLOG_PUBLIC_HDRS
    ${spdlog_root}/include/spdlog/async.h
    ${spdlog_root}/include/spdlog/async_logger.h
    ${spdlog_root}/include/spdlog/common.h
    ${spdlog_root}/include/spdlog/formatter.h
    ${spdlog_root}/include/spdlog/logger.h
    ${spdlog_root}/include/spdlog/spdlog.h
    ${spdlog_root}/include/spdlog/tweakme.h
    ${spdlog_root}/include/spdlog/version.h
)

set(SPDLOG_BUILD
    ${spdlog_root}/../build/build_spdlog.cmake
)

add_library(spdlog OBJECT 
	${SPDLOG_PUBLIC_HDRS} 
	${SPDLOG_BUILD}
)

set_property(TARGET spdlog APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET spdlog APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(spdlog PUBLIC "${spdlog_root}/include")

source_group("Public Headers" FILES ${SPDLOG_PUBLIC_HDRS})
source_group("Build" FILES ${SPDLOG_BUILD})
