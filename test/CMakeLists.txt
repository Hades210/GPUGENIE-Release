include_directories(${PROJECT_SOURCE_DIR}/src)
link_directories(${PROJECT_SOURCE_DIR}/lib)


function(add_test_case TARGET)
   cuda_add_executable(${TARGET} ${ARGN})
   target_link_libraries(${TARGET}
                         -lpthread
                         -l${PROJECT_NAME})
   add_test(${TARGET} ${PROJECT_BINARY_DIR}/bin/${TARGET})
endfunction()

add_test_case(test_1_csv_input_sift_data test_1.cu)
add_test_case(test_2_binary_input_sift_data test_2.cu)
add_test_case(test_3_binary_input_tweets test_3.cu)
add_test_case(test_4_csv_input_serialization_sift test_4.cu)
add_test_case(test_5_csv_input_tweets test_5.cu)
