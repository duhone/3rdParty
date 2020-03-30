set(root "${CMAKE_CURRENT_LIST_DIR}/../robin-map")

set(PUBLIC_HDRS
    ${root}/include/tsl/robin_growth_policy.h
    ${root}/include/tsl/robin_hash.h
    ${root}/include/tsl/robin_map.h
    ${root}/include/tsl/robin_set.h
)

set(BUILD
    ${root}/../build/build_robinmap.cmake
)

add_library(robinmap OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(robinmap)

set_property(TARGET robinmap APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(robinmap SYSTEM PUBLIC "${root}/include")

		