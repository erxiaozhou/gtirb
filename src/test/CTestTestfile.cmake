# CMake generated Testfile for 
# Source directory: /home/eschulte/lisp/local-projects/gtirb/src/test
# Build directory: /home/eschulte/lisp/local-projects/gtirb/src/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(TestGTIRB "/home/eschulte/lisp/local-projects/gtirb/bin/TestGTIRB")
set_tests_properties(TestGTIRB PROPERTIES  _BACKTRACE_TRIPLES "/home/eschulte/lisp/local-projects/gtirb/Macros.cmake;67;add_test;/home/eschulte/lisp/local-projects/gtirb/src/test/CMakeLists.txt;50;gtirb_add_executable_gtest;/home/eschulte/lisp/local-projects/gtirb/src/test/CMakeLists.txt;0;")
add_test(testgtirb "/home/eschulte/lisp/local-projects/gtirb/bin/TestGTIRB")
set_tests_properties(testgtirb PROPERTIES  _BACKTRACE_TRIPLES "/home/eschulte/lisp/local-projects/gtirb/src/test/CMakeLists.txt;63;add_test;/home/eschulte/lisp/local-projects/gtirb/src/test/CMakeLists.txt;0;")
subdirs("testInputBinary")
