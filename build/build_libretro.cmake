set(root "${CMAKE_CURRENT_LIST_DIR}/../libretro")

set(PUBLIC_HDRS
    ${root}/libretro.h
)

set(BUILD
    ${root}/../build/build_libretro.cmake
)

add_library(libretro OBJECT 
  ${PUBLIC_HDRS}
  ${BUILD}
)
			
settings3rdParty(libretro)
			
target_include_directories(libretro SYSTEM PUBLIC "${root}")

set_property(TARGET libretro APPEND PROPERTY LINKER_LANGUAGE CPP)
				