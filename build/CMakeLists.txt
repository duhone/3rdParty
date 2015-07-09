cmake_minimum_required (VERSION 2.6)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

project (3rdParty)

###############################################
#catch
###############################################
file(GLOB_RECURSE catch_inc "${PROJECT_SOURCE_DIR}/../catch/*.hpp")
list(APPEND catch_src ${catch_inc})

add_library(catch OBJECT ${catch_src})
						
set_property(TARGET catch APPEND PROPERTY FOLDER 3rdParty)
set_property(TARGET catch APPEND PROPERTY LINKER_LANGUAGE CPP)
set_property(TARGET catch APPEND PROPERTY COMPILE_FLAGS "-WX -W4")
				