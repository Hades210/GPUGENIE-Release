#.PHONY: build test doc clean
#
#
build:
#
#
###Building file: example_tweets.cu
###Invoking: NVCC Compiler

	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -M -o "example_tweets.d" "example_tweets.cu"
	nvcc -std=c++11 --device-c  -I../src -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_tweets.o" "example_tweets.cu"
	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_tweets_bin"  example_tweets.o   -lGPUGenie -lpthread -lboost_serialization
##
##Building file: example_tweets_binary.cu
##Invoking: NVCC Compiler
#	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3 -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -M -o "example_tweets_binary.d" "example_tweets_binary.cu"
#	nvcc -std=c++11 --device-c  -I../src -O3 -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_tweets_binary.o" "example_tweets_binary.cu"
#	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_tweets_binary_bin"  example_tweets_binary.o   -lGPUGenie -lpthread -lboost_serialization
###


#Building file: example_sift.cu
#Invoking: NVCC Compiler
#	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52  -M -o "example_sift.d" "example_sift.cu"
#	nvcc -std=c++11 --device-c  -I../src -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_sift.o" "example_sift.cu"
#	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_sift_bin"  example_sift.o   -lGPUGenie -lpthread -lboost_serialization

#Building file: example_sift_binary.cu
#Invoking: NVCC Compiler
#	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52  -M -o "example_sift_binary.d" "example_sift_binary.cu"
#	nvcc -std=c++11 --device-c  -I../src -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_sift_binary.o" "example_sift_binary.cu"
#	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_sift_binary_bin"  example_sift_binary.o   -lGPUGenie -lpthread -lboost_serialization

#Building file: example_read_table_from_file.cu
#Invoking: NVCC Compiler
#	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52  -M -o "example_table_from_file.d" "example_table_from_file.cu"
#	nvcc -std=c++11 --device-c  -I../src -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_table_from_file.o" "example_table_from_file.cu"
#	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_table_from_file_bin"  example_table_from_file.o   -lGPUGenie -lpthread -lboost_serialization

#Building file: example_read_table_from_file.cu
#Invoking: NVCC Compiler
#	nvcc -std=c++11 -I../src -include ../src/GPUGenie.h -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52  -M -o "example_sift_subsequence.d" "example_sift_subsequence.cu"
#	nvcc -std=c++11 --device-c  -I../src -O3  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -include ../src/GPUGenie.h  -x cu -o  "example_table_from_file.o" "example_sift_subsequence.cu"
#	nvcc -std=c++11 --cudart  shared -L../lib -L/lib64 -L../build/lib --relocatable-device-code=true  -gencode arch=compute_35,code=sm_35 -gencode arch=compute_52,code=sm_52 -link -o  "example_sift_subsequence_bin"  example_sift_subsequence.o   -lGPUGenie -lpthread -lboost_serialization
#
#
##Building file: convert_csv2binary.cu
##Invoking: NVCC Compiler
#	nvcc -I../src -include ../src/GPUGenie.h -L../lib convert_csv2binary.cu -o convert -lGPUGenie

clean:
	rm -rf *.o 
	rm -rf *.d
	rm -rf *_bin

