#include <ap_int.h>
#include "../include/knn.h"
#include <hls_math.h> 
#include <stdlib.h>

// =========================================================
// PART 1: Distance Calculation & Top-K Sorter
// =========================================================
void knn_distance_and_sort(
    pixel_t *test_point,
    pixel_t *X_train,
    label_t *y_train,
    label_t top_k_labels[K_NEIGHBORS]
) {
#pragma HLS INLINE off

    dist_t distances[NUM_TRAIN_SAMPLES];
    label_t labels[NUM_TRAIN_SAMPLES];
    dist_t top_k_dist[K_NEIGHBORS];


    // --------------------------------------------------------
    // TODO: Initialize Top-K buffers
    // --------------------------------------------------------
    // Initialize top_k_dist with the maximum possible 
    // distance (e.g., 0xFFFFFFFF) and top_k_labels to 0.
    /* YOUR CODE HERE */
    init_top_k: for (int i = 0; i < K_NEIGHBORS; i++){
        #pragma HLS PIPELINE OFF
        top_k_dist[i] = 0xFFFFFFFF;
        top_k_labels[i] = 0;
    }
    


    // --------------------------------------------------------
    // TODO: Loop through every training sample
    // --------------------------------------------------------
    // Iterates NUM_TRAIN_SAMPLES times.    
    /* YOUR CODE HERE */
    train_loop: for( int i = 0; i < NUM_TRAIN_SAMPLES; i++){
        #pragma HLS PIPELINE OFF
      

    // --------------------------------------------------------
    // TODO: Calculate Euclidean distance
    // --------------------------------------------------------
    // Calculate the distance between the 'test_point' and the current 'X_train' row.   
    /* YOUR CODE HERE */
        dist_t sum = 0.0;

        feature_loop: for (int j = 0; j < NUM_FEATURES; j++){
            #pragma HLS PIPELINE OFF
            pixel_t diff = test_point[j] - X_train[i * NUM_FEATURES + j];
            sum += diff * diff;
        }
        distances[i] = hls::sqrt(sum);
        labels[i] = y_train[i];

    }
    // --------------------------------------------------------
    // TODO: Sort
    // --------------------------------------------------------
    // Sort the distances from smallest to largest, pick the labels corresponding to 
    // the top K shortest distances and store them into the top_k_labels array.        
    /* YOUR CODE HERE */
    sort_loop_i: for (int i = 0; i < NUM_TRAIN_SAMPLES -1; i++) {
        #pragma HLS PIPELINE OFF
        sort_loop_j: for (int j = 0; j < NUM_TRAIN_SAMPLES - i - 1; j++) {
            #pragma HLS PIPELINE OFF
            if (distances[j] > distances[j + 1]) {
                dist_t temp_dist = distances[j];
                distances[j] = distances[j + 1];
                distances[j + 1] = temp_dist;

                label_t temp_label = labels[j];
                labels[j] = labels[j + 1];
                labels[j + 1] = temp_label;
            }
        }
    }
    copy_top_k: for (int i = 0; i < K_NEIGHBORS; i++) {
        #pragma HLS PIPELINE OFF
        top_k_dist[i] = distances[i];
        top_k_labels[i] = labels[i];
    }
}

// =========================================================
// KERNEL 2: Majority Vote
// =========================================================
label_t knn_majority_vote(label_t top_k_labels[K_NEIGHBORS]) {    
#pragma HLS INLINE off
    int counts[NUM_CLASSES];
    
    // --------------------------------------------------------
    // TODO: Initialize the counts array
    // --------------------------------------------------------
    // Initialize all elements in the 'counts' array to 0.    
    /* YOUR CODE HERE */
    count_init_loop: for (int i = 0; i < NUM_CLASSES; i++) {
        #pragma HLS PIPELINE OFF
        counts[i] = 0;
    }


    // --------------------------------------------------------
    // TODO: Count the frequencies
    // --------------------------------------------------------
    // Loop through the 'top_k_labels' array and increment the 
    // corresponding index in your 'counts' array.
    /* YOUR CODE HERE */
    set_counts_loop: for (int i = 0; i < K_NEIGHBORS; i++) {
        #pragma HLS PIPELINE OFF
        int idx = top_k_labels[i];
        counts[idx] ++;
    }

    // --------------------------------------------------------
    // TODO: Find the maximum (Argmax)
    // --------------------------------------------------------
    // Loop through the 'counts' array to find which label has the 
    // highest vote. Store this label in a variable and return it.
    /* YOUR CODE HERE */
    int max = 0;
    label_t max_label;
    max_count_loop: for (int i = 0; i < NUM_CLASSES; i++) {
        #pragma HLS PIPELINE OFF
        if (counts[i] > max) {
            max = counts[i];
            max_label = i;
        }
        
    }

    return max_label; // Replace with your actual majority label
}

// =========================================================
// TOP-LEVEL KERNEL: Connecting the modules
// =========================================================
void knn_accelerator(
    pixel_t *X_test,
    pixel_t *X_train,
    label_t *y_train,
    label_t *y_test
) {
    // Map array interfaces to AXI4 Master ports for direct RAM access
    #pragma HLS INTERFACE m_axi port=X_train offset=slave bundle=gmem_x_train depth=NUM_FEATURES*NUM_TRAIN_SAMPLES
    #pragma HLS INTERFACE m_axi port=y_train offset=slave bundle=gmem_y_train depth=NUM_TRAIN_SAMPLES
    #pragma HLS INTERFACE m_axi port=X_test  offset=slave bundle=gmem_x_test  depth=NUM_FEATURES*NUM_TEST_SAMPLES
    #pragma HLS INTERFACE m_axi port=y_test  offset=slave bundle=gmem_y_test  depth=NUM_TEST_SAMPLES
    
    // Map scalars and return values to AXI4-Lite for Python control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    
    // Internal buffer connecting the two kernels
    label_t top_k_labels[K_NEIGHBORS];
    
    test_data: for (int i = 0; i < NUM_TEST_SAMPLES; i++) {
        #pragma HLS PIPELINE OFF
        // 1. Calculate distances and identify the K-Nearest neighbors
        knn_distance_and_sort(X_test+i*NUM_FEATURES, X_train, y_train, top_k_labels);
        
        // 2. Perform the majority vote to assign the final classification
        y_test[i] = knn_majority_vote(top_k_labels);
    }
}