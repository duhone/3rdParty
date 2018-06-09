include_directories("${CMAKE_CURRENT_LIST_DIR}/../libretro")

add_library(libretro OBJECT "${CMAKE_CURRENT_LIST_DIR}/../libretro/libretro.h")
						
set_property(TARGET libretro APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET libretro APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET libretro APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				