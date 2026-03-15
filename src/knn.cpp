#include <ap_int.h>
#include "knn.h"

// =========================================================
// PART 1: Distance Calculation & Top-K Sorter
// =========================================================
void knn_distance_and_sort(
    pixel_t *test_point,
    pixel_t *X_train,
    label_t *y_train,
    label_t top_k_labels[K_NEIGHBORS]
) {
    dist_t top_k_dist[K_NEIGHBORS];

    // --------------------------------------------------------
    // TODO: Initialize Top-K buffers
    // --------------------------------------------------------
    // Initialize top_k_dist with the maximum possible 
    // distance (e.g., 0xFFFFFFFF) and top_k_labels to 0.
    /* YOUR CODE HERE */


    // --------------------------------------------------------
    // TODO: Loop through every training sample
    // --------------------------------------------------------
    // Iterates NUM_TRAIN_SAMPLES times.    
    /* YOUR CODE HERE */

        
    // --------------------------------------------------------
    // TODO: Calculate Euclidean distance
    // --------------------------------------------------------
    // Calculate the distance between the 'test_point' and the current 'X_train' row.   
    /* YOUR CODE HERE */


    // --------------------------------------------------------
    // TODO: Sort
    // --------------------------------------------------------
    // Sort the distances from smallest to largest, pick the labels corresponding to 
    // the top K shortest distances and store them into the top_k_labels array.        
    /* YOUR CODE HERE */

}

// =========================================================
// KERNEL 2: Majority Vote
// =========================================================
label_t knn_majority_vote(label_t top_k_labels[K_NEIGHBORS]) {    
    int counts[NUM_CLASSES];
    
    // --------------------------------------------------------
    // TODO: Initialize the counts array
    // --------------------------------------------------------
    // Initialize all elements in the 'counts' array to 0.    
    /* YOUR CODE HERE */


    // --------------------------------------------------------
    // TODO: Count the frequencies
    // --------------------------------------------------------
    // Loop through the 'top_k_labels' array and increment the 
    // corresponding index in your 'counts' array.
    /* YOUR CODE HERE */


    // --------------------------------------------------------
    // TODO: Find the maximum (Argmax)
    // --------------------------------------------------------
    // Loop through the 'counts' array to find which label has the 
    // highest vote. Store this label in a variable and return it.
    /* YOUR CODE HERE */

    return 0; // Replace with your actual majority label
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
        // 1. Calculate distances and identify the K-Nearest neighbors
        knn_distance_and_sort(X_test+i*NUM_FEATURES, X_train, y_train, top_k_labels);
        
        // 2. Perform the majority vote to assign the final classification
        y_test[i] = knn_majority_vote(top_k_labels);
    }
}