set(glm_root "${CMAKE_CURRENT_LIST_DIR}/../glm")

# too lazy to list all the headers
set(GLM_PUBLIC_HDRS
    ${glm_root}/glm/glm.hpp
)

set(GLM_BUILD
    ${glm_root}/../build/build_glm.cmake
)

add_library(glm OBJECT 
	${GLM_PUBLIC_HDRS} 
	${GLM_BUILD}
)

set_property(TARGET glm APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET glm APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(glm PUBLIC "${glm_root}")
target_compile_definitions(glm PUBLIC GLM_FORCE_CXX17)

source_group("Public Headers" FILES ${GLM_PUBLIC_HDRS})
source_group("Build" FILES ${GLM_BUILD})
