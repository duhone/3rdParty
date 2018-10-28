include_directories("${CMAKE_CURRENT_LIST_DIR}/../spdlog/include")

add_library(spdlog OBJECT "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/async.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/async_logger.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/common.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/formatter.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/logger.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/spdlog.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/tweakme.h"
                          "${CMAKE_CURRENT_LIST_DIR}/../spdlog/include/spdlog/version.h"
)
						
set_property(TARGET spdlog APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET spdlog APPEND PROPERTY LINKER_LANGUAGE CPP)
		