set(robinmap_root "${CMAKE_CURRENT_LIST_DIR}/../robin-map")

set(ROBINMAP_PUBLIC_HDRS
    ${robinmap_root}/include/tsl/robin_growth_policy.h
    ${robinmap_root}/include/tsl/robin_hash.h
    ${robinmap_root}/include/tsl/robin_map.h
    ${robinmap_root}/include/tsl/robin_set.h
)

set(ROBINMAP_BUILD
    ${robinmap_root}/../build/build_catch.cmake
)

add_library(robinmap OBJECT 
	${ROBINMAP_PUBLIC_HDRS} 
	${ROBINMAP_BUILD}
)

set_property(TARGET robinmap APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET robinmap APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(robinmap PUBLIC "${robinmap_root}/include")

source_group("Public Headers" FILES ${ROBINMAP_PUBLIC_HDRS})
source_group("Build" FILES ${ROBINMAP_BUILD})

		