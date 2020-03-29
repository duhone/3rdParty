set(root "${CMAKE_CURRENT_LIST_DIR}/../glm")

# too lazy to list all the headers
set(PUBLIC_HDRS
    ${root}/glm/glm.hpp
)

set(BUILD
    ${root}/../build/build_glm.cmake
)

add_library(glm OBJECT 
	${PUBLIC_HDRS} 
	${BUILD}
)

settings3rdParty(glm)

set_property(TARGET glm APPEND PROPERTY LINKER_LANGUAGE CPP)

target_include_directories(glm PUBLIC "${root}")
target_compile_definitions(glm PUBLIC GLM_FORCE_CXX17)
