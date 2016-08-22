/** Name: test_12.cu
 * Description:
 *   the most basic test for subsequence search
 *   sift data
 *   data is from binary file
 *   query is from csv file, single range
 *
 *
 */


#include "GPUGenie.h"

#include <assert.h>
#include <vector>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;
using namespace GPUGenie;

int main(int argc, char* argv[])
{
    cudaDeviceReset();
    string dataFile = "../static/sift_20.dat";
    string queryFile = "../static/sift_20.csv";
    vector<vector<int> > queries;
    vector<vector<int> > data;
    inv_table * table = NULL;
    GPUGenie_Config config;

    config.dim = 5;
    config.count_threshold = 5;
    config.num_of_topk = 5;
    config.hashtable_size = 100*config.num_of_topk*1.5;
    config.query_radius = 0;
    config.use_device = 0;
    config.use_adaptive_range = false;
    config.selectivity = 0.0f;

    config.query_points = &queries;
    config.data_points = &data;

    config.use_load_balance = false;
    config.posting_list_max_length = 6400;
    config.multiplier = 1.5f;
    config.use_multirange = false;

    config.data_type = 1;
    config.search_type = 1;
    config.max_data_size = 0;

    config.num_of_queries = 3;
    config.use_subsequence_search = true;

    read_file(dataFile.c_str(), &config.data, config.item_num, &config.index, config.row_num);
    read_file(queries, queryFile.c_str(), config.num_of_queries);

    preprocess_for_knn_binary(config, table);



    vector<int> & inv = *table[0].inv();

    /**test for table*/

    assert(inv[0] == 4);
    assert(inv[1] == 11);
    assert(inv[2] == 36);
    assert(inv[3] == 43);
    assert(inv[4] == 52);
    assert(inv[5] == 67);
    vector<int> original_result;
    vector<int> result_count;
    vector<int> rowID;
    vector<int> rowOffset;
    knn_search_after_preprocess(config, table, original_result, result_count);

    int shift_bits = table[0]._shift_bits_subsequence();
    
    assert( shift_bits == 3 );

    get_rowID_offset(original_result, rowID, rowOffset, shift_bits);
    reset_device();
    
    assert(rowID[0] == 0);
    assert(rowOffset[0] == 0);
    assert(result_count[0] == 5);

    assert(rowID[1] == 4);
    assert(result_count[1] == 2);

    assert(rowID[5] == 1);
    assert(result_count[5] == 5);
    
    assert(rowID[10] == 2);
    assert(result_count[10] == 5);
    delete[] table;
    return 0;
}
