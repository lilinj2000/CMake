# this file contains rule variables that tell cmake how to 
# do things like build a .o file, create a shared or static library
#

# create a shared C++ librar
IF(NOT CMAKE_CXX_CREATE_SHARED_LIBRARY)
  SET(CMAKE_CXX_CREATE_SHARED_LIBRARY
      "${CMAKE_CXX_COMPILER} ${CMAKE_SHARED_LIBRARY_CREATE_FLAGS} "
      "${CMAKE_CXX_LINK_SHARED_OUT_FLAG} <TARGET> <OBJECTS>")
ENDIF(NOT CMAKE_CXX_CREATE_SHARED_LIBRARY)

# create a c++ shared module
IF(NOT CMAKE_CXX_CREATE_SHARED_MODULE)
  SET(CMAKE_CXX_CREATE_SHARED_MODULE
      "${CMAKE_CXX_COMPILER} ${CMAKE_SHARED_MODULE_CREATE_FLAGS} "
      "${CMAKE_CXX_LINK_SHARED_OUT_FLAG} <TARGET> <OBJECTS>")
ENDIF(NOT CMAKE_CXX_CREATE_SHARED_MODULE)

# create a C shared library
IF(NOT CMAKE_C_CREATE_SHARED_LIBRARY)
  SET(CMAKE_C_CREATE_SHARED_LIBRARY
      "${CMAKE_C_COMPILER} ${CMAKE_SHARED_LIBRARY_CREATE_FLAGS} "
      "${CMAKE_C_LINK_SHARED_OUT_FLAG} <TARGET> <OBJECTS>")
ENDIF(NOT CMAKE_C_CREATE_SHARED_LIBRARY)

# create a C shared module
IF(NOT CMAKE_C_CREATE_SHARED_MODULE)
  SET(CMAKE_C_CREATE_SHARED_MODULE
      "${CMAKE_C_COMPILER} ${CMAKE_SHARED_MODULE_CREATE_FLAGS} "
      "${CMAKE_C_LINK_SHARED_OUT_FLAG} <TARGET> <OBJECTS>")
ENDIF(NOT CMAKE_C_CREATE_SHARED_MODULE)

# create a C++ static library
IF(NOT CMAKE_CXX_CREATE_STATIC_LIBRARY)
  SET(CMAKE_CXX_CREATE_STATIC_LIBRARY
      "${CMAKE_CXX_AR} cr <TARGET> <OBJECTS> "
      "${CMAKE_RANLIB} <TARGET> ")
ENDIF(NOT CMAKE_CXX_CREATE_STATIC_LIBRARY)

# create a C static library
IF(NOT CMAKE_C_CREATE_STATIC_LIBRARY)
  SET(CMAKE_C_CREATE_STATIC_LIBRARY
      "${CMAKE_AR} cr <TARGET> <OBJECTS> "
      "${CMAKE_RANLIB} <TARGET> ")
ENDIF(NOT CMAKE_C_CREATE_STATIC_LIBRARY)

# compile a C++ file into an object file
IF(NOT CMAKE_CXX_COMPILE_OBJECT)
  SET(CMAKE_CXX_COMPILE_OBJECT
    "${CMAKE_CXX_COMPILER} -o <OBJECT> <INCLUDE_FLAGS> <SHARED_FLAGS> ${CMAKE_CXX_FLAGS} -c <SOURCE>")
ENDIF(NOT CMAKE_CXX_COMPILE_OBJECT)

# compile a C file into an object file
IF(NOT CMAKE_C_COMPILE_OBJECT)
  SET(CMAKE_C_COMPILE_OBJECT
    "${CMAKE_C_COMPILER} -o <OBJECT> <INCLUDE_FLAGS> <SHARED_FLAGS> ${CMAKE_C_FLAGS} -c <SOURCE>")
ENDIF(NOT CMAKE_C_COMPILE_OBJECT)


IF(NOT CMAKE_C_LINK_EXECUTABLE)
  SET(CMAKE_C_LINK_EXECUTABLE
    "${CMAKE_C_COMPILER} <SHARED_FLAGS> <OBJECTS>  -o <TARGET> ")
ENDIF(NOT CMAKE_C_LINK_EXECUTABLE)


IF(NOT CMAKE_CXX_LINK_EXECUTABLE)
  SET(CMAKE_CXX_LINK_EXECUTABLE
    "${CMAKE_CXX_COMPILER} <SHARED_FLAGS> <OBJECTS>  -o <TARGET> ")
ENDIF(NOT CMAKE_CXX_LINK_EXECUTABLE)
