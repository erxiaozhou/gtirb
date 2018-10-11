#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "proto" for configuration ""
set_property(TARGET proto APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(proto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libproto.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS proto )
list(APPEND _IMPORT_CHECK_FILES_FOR_proto "${_IMPORT_PREFIX}/lib/libproto.a" )

# Import target "gtirb" for configuration ""
set_property(TARGET gtirb APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(gtirb PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libgtirb.so.1.2.0"
  IMPORTED_SONAME_NOCONFIG "libgtirb.so.1.2.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS gtirb )
list(APPEND _IMPORT_CHECK_FILES_FOR_gtirb "${_IMPORT_PREFIX}/lib/libgtirb.so.1.2.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
