execute_process(
    COMMAND ${TEST_EXECUTABLE}
    OUTPUT_FILE ${OUTPUT_FILE}
    RESULT_VARIABLE TEST_RESULT
)

if(NOT TEST_RESULT EQUAL 0)
    message(FATAL_ERROR "Test executable failed with return code ${TEST_RESULT}")
endif()

execute_process(
    COMMAND ${CMAKE_COMMAND} -E compare_files --ignore-eol ${REFERENCE_FILE} ${OUTPUT_FILE}
    RESULT_VARIABLE COMPARE_RESULT
)

if(NOT COMPARE_RESULT EQUAL 0)
    message(FATAL_ERROR "Output comparison failed for ${OUTPUT_FILE}")
endif()
