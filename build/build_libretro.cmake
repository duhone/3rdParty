set(libretro_root "${CMAKE_CURRENT_LIST_DIR}/../libretro")

set(LIBRETRO_PUBLIC_HDRS
    ${libretro_root}/libretro.h
)

set(LIBRETRO_BUILD
    ${libretro_root}/../build/build_libretro.cmake
)

add_library(libretro OBJECT 
  ${LIBRETRO_PUBLIC_HDRS}
  ${LIBRETRO_BUILD}
)
						
target_include_directories(libretro PUBLIC "${libretro_root}")

set_property(TARGET libretro APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET libretro APPEND PROPERTY LINKER_LANGUAGE CPP)
				
source_group("Public Headers" FILES ${LIBRETRO_PUBLIC_HDRS})
source_group("Build" FILES ${LIBRETRO_BUILD})