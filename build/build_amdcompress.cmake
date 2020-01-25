set(amdcompress_root "${CMAKE_CURRENT_LIST_DIR}/../amdcompress/SDK")

set(AMDCOMPRESS_PUBLIC_HDRS
    ${amdcompress_root}/include/AMDCompress.h
)

set(AMDCOMPRESS_BUILD
    ${amdcompress_root}/../../build/build_amdcompress.cmake
)

add_library(amdcompress OBJECT 
	${AMDCOMPRESS_PUBLIC_HDRS} 
	${AMDCOMPRESS_BUILD}
)

set_property(TARGET amdcompress APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET amdcompress APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(amdcompress PUBLIC "${amdcompress_root}/include")
target_link_libraries(amdcompress PUBLIC "${amdcompress_root}/lib/x64/AMDCompress_MT_DLL.lib")

source_group("Public Headers" FILES ${AMDCOMPRESS_PUBLIC_HDRS})
source_group("Build" FILES ${AMDCOMPRESS_BUILD})

