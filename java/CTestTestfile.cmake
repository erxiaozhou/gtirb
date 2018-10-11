# CMake generated Testfile for 
# Source directory: /home/eschulte/lisp/local-projects/gtirb/java
# Build directory: /home/eschulte/lisp/local-projects/gtirb/java
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(JavaSanityTest "/usr/bin/java" "-cp" ".:gtirb_api-1.2.0.jar:protobuf-java-3.11.4.jar" "testIrSanity" "/home/eschulte/lisp/local-projects/gtirb/java/tests/testIr.gtirb")
set_tests_properties(JavaSanityTest PROPERTIES  PASS_REGULAR_EXPRESSION "test OK." _BACKTRACE_TRIPLES "/home/eschulte/lisp/local-projects/gtirb/java/CMakeLists.txt;112;add_test;/home/eschulte/lisp/local-projects/gtirb/java/CMakeLists.txt;0;")
