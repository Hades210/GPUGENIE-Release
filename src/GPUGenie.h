#ifndef GPUGenie_h
#define GPUGenie_h

typedef unsigned int u32;
typedef unsigned long long u64;

#define THREADS_PER_BLOCK 256

#define GPUGenie_Minus_One_THREADS_PER_BLOCK 1024

#define GPUGenie_knn_THREADS_PER_BLOCK 1024

#define GPUGenie_knn_DEFAULT_HASH_TABLE_SIZE 1

#define GPUGenie_knn_DEFAULT_BITMAP_BITS 2

#define GPUGenie_knn_DEFAULT_DATA_PER_THREAD 256

#define GPUGenie_device_THREADS_PER_BLOCK 256
//for ide: to revert it as system file later, change <> to ""
#include <GPUGenie/inv_list.h>
#include <GPUGenie/inv_table.h>
#include <GPUGenie/query.h>
#include <GPUGenie/match.h>
#include <GPUGenie/heap_count.h>
#include <GPUGenie/FileReader.h>
#include <GPUGenie/interface.h>
#include <GPUGenie/knn.h>


#include <GPUGenie/Logger.h>
#include <GPUGenie/Timing.h>
#include <GPUGenie/genie_errors.h>

#endif
