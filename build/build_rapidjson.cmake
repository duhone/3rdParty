set(root "${CMAKE_CURRENT_LIST_DIR}/../rapidjson")

# too lazy to list all the headers
set(PUBLIC_HDRS
    ${root}/include/rapidjson/rapidjson.h
)

set(BUILD
    ${root}/../build/build_rapidjson.cmake
)

add_library(rapidjson OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(rapidjson)

set_property(TARGET rapidjson APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(rapidjson SYSTEM PUBLIC "${root}/include")
target_compile_definitions(rapidjson PUBLIC RAPIDJSON_HAS_STDSTRING)

