set(root "${CMAKE_CURRENT_LIST_DIR}/../amdcompress/SDK")

set(PUBLIC_HDRS
    ${root}/include/AMDCompress.h
)

set(BUILD
    ${root}/../../build/build_amdcompress.cmake
)

add_library(amdcompress OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)
settings3rdParty(amdcompress)

set_property(TARGET amdcompress APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(amdcompress PUBLIC "${root}/include")
target_link_libraries(amdcompress PUBLIC "${root}/lib/x64/AMDCompress_MT_DLL.lib")


