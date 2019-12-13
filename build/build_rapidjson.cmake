set(rapidjson_root "${CMAKE_CURRENT_LIST_DIR}/../rapidjson")

# too lazy to list all the headers
set(RAPIDJSON_PUBLIC_HDRS
    ${rapidjson_root}/include/rapidjson/rapidjson.h
)

set(RAPIDJSON_BUILD
    ${rapidjson_root}/../build/build_rapidjson.cmake
)

add_library(rapidjson OBJECT 
	${RAPIDJSON_PUBLIC_HDRS} 
	${RAPIDJSON_BUILD}
)

set_property(TARGET rapidjson APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET rapidjson APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(rapidjson PUBLIC "${rapidjson_root}/include")
target_compile_definitions(rapidjson PUBLIC RAPIDJSON_HAS_STDSTRING)

source_group("Public Headers" FILES ${RAPIDJSON_PUBLIC_HDRS})
source_group("Build" FILES ${RAPIDJSON_BUILD})

