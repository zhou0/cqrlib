# CMake generated Testfile for
# Source directory: /app
# Build directory: /app/build
#
# This file includes the relevant testing commands required for
# testing this directory and lists subdirectories to be tested as well.
add_test(CQRlibTest "/usr/bin/cmake" "-DTEST_EXECUTABLE=/app/build/CQRlibTest" "-DREFERENCE_FILE=/app/CQRlibTest_orig.lst" "-DOUTPUT_FILE=CQRlibTest.lst" "-P" "/app/run_test.cmake")
set_tests_properties(CQRlibTest PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;28;add_test;/app/CMakeLists.txt;0;")
add_test(CPPQRTest "/usr/bin/cmake" "-DTEST_EXECUTABLE=/app/build/CPPQRTest" "-DREFERENCE_FILE=/app/CPPQRTest_orig.lst" "-DOUTPUT_FILE=CPPQRTest.lst" "-P" "/app/run_test.cmake")
set_tests_properties(CPPQRTest PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;36;add_test;/app/CMakeLists.txt;0;")
