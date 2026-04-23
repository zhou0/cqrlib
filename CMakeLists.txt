cmake_minimum_required(VERSION 3.5)
project(CQRlib VERSION 1.1.4 LANGUAGES C CXX)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -ansi -pedantic")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -ansi -pedantic")

add_library(CQRlib cqrlib.c)
target_include_directories(CQRlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(CQRlibTest CQRlibTest.c)
target_link_libraries(CQRlibTest CQRlib m)

add_executable(CPPQRTest CPPQRTest.cpp)
target_compile_definitions(CPPQRTest PRIVATE CQR_NOCCODE=1)
target_include_directories(CPPQRTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(CPPQRTest m)

include(GNUInstallDirs)
install(TARGETS CQRlib
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
install(FILES cqrlib.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(TARGETS CQRlibTest CPPQRTest DESTINATION ${CMAKE_INSTALL_BINDIR})

enable_testing()

add_test(NAME CQRlibTest
    COMMAND ${CMAKE_COMMAND}
    -DTEST_EXECUTABLE=$<TARGET_FILE:CQRlibTest>
    -DREFERENCE_FILE=${CMAKE_CURRENT_SOURCE_DIR}/CQRlibTest_orig.lst
    -DOUTPUT_FILE=CQRlibTest.lst
    -P ${CMAKE_CURRENT_SOURCE_DIR}/run_test.cmake
)

add_test(NAME CPPQRTest
    COMMAND ${CMAKE_COMMAND}
    -DTEST_EXECUTABLE=$<TARGET_FILE:CPPQRTest>
    -DREFERENCE_FILE=${CMAKE_CURRENT_SOURCE_DIR}/CPPQRTest_orig.lst
    -DOUTPUT_FILE=CPPQRTest.lst
    -P ${CMAKE_CURRENT_SOURCE_DIR}/run_test.cmake
)
