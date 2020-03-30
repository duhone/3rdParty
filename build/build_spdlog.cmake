set(root "${CMAKE_CURRENT_LIST_DIR}/../spdlog")

set(PUBLIC_HDRS
    ${root}/include/spdlog/async.h
    ${root}/include/spdlog/async_logger.h
    ${root}/include/spdlog/common.h
    ${root}/include/spdlog/formatter.h
    ${root}/include/spdlog/logger.h
    ${root}/include/spdlog/spdlog.h
    ${root}/include/spdlog/tweakme.h
    ${root}/include/spdlog/version.h
)

set(BUILD
    ${root}/../build/build_spdlog.cmake
)

add_library(spdlog OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(spdlog)

set_property(TARGET spdlog APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(spdlog SYSTEM PUBLIC "${root}/include")
