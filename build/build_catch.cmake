include_directories("${CMAKE_CURRENT_LIST_DIR}/../catch")

add_library(catch OBJECT "${CMAKE_CURRENT_LIST_DIR}/../catch/catch.hpp")
						
set_property(TARGET catch APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET catch APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET catch APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
		