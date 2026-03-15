#ifndef KNN_H
#define KNN_H

#include <ap_int.h>
#include <ap_fixed.h>

using namespace std;

// --- System Parameters ---
#define NUM_FEATURES 49
#define NUM_CLASSES 10
#define K_NEIGHBORS 3

// --- Simulation Scaling ---
#define NUM_TRAIN_SAMPLES 1500  
#define NUM_TEST_SAMPLES 1000  

// --- Hardware Data Types ---
typedef int label_t;
typedef double pixel_t;
typedef double dist_t;

// --- Function Prototypes ---
void knn_accelerator(
    pixel_t *X_test,
    pixel_t *X_train,
    label_t *y_train,
    label_t *y_test
);

#endif