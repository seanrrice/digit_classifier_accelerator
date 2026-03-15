#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "knn.h"

void loadDataset(string filename, pixel_t *X, label_t *y) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file. Make sure the file is in the C-Sim working directory." << std::endl;
        return;
    }

    std::string line;
    int count = 0;

    // Parse the file line by line
    while (std::getline(file, line) && count < NUM_TRAIN_SAMPLES) {
        std::stringstream ss(line);
        int label_val;
        ss >> label_val;
        y[count] = (label_t)label_val;
        Feature_Read_Loop: for (int i = 0; i < NUM_FEATURES; ++i) {
            double feature_val;
            ss >> feature_val;
            X[count * NUM_FEATURES + i] = (pixel_t)feature_val; 
        }        
        count++;
    }
    
    file.close();
    std::cout << "\tLoaded " << count << " samples." << std::endl;
}

int main() {
    // 1. Allocate memory
    static pixel_t X_train[NUM_TRAIN_SAMPLES*NUM_FEATURES];
    static label_t y_train[NUM_TRAIN_SAMPLES];
    static pixel_t X_test[NUM_TEST_SAMPLES*NUM_FEATURES];
    static label_t pred_test[NUM_TEST_SAMPLES];
    static label_t y_test[NUM_TEST_SAMPLES];

    // 2. Load the dataset from the file (.dat file are generated from the Python notebook and contain the data after preprocessing and feature extraction)
    cout << "Loading data from file..." << endl;
    loadDataset("train_data_hls.dat", X_train, y_train);
    loadDataset("test_data_hls.dat", X_test, y_test);

    // 3. Execute the Hardware Kernel and Calculate Accuracy
    cout << "\nStarting KNN hardware simulation..." << endl;

    // Call the HLS top-level function
    knn_accelerator(X_test, X_train, y_train, pred_test);
    int correct_predictions = 0;

    for (int i = 0; i < NUM_TEST_SAMPLES; i++) {
        // Check if the prediction matches the ground truth
        if (pred_test[i] == y_test[i]) {
            correct_predictions++;
        }

        // Print progress for every 10th sample to track execution speed
        if ((i + 1) % 10 == 0) {
            cout << "\tProcessed " << (i + 1) << "/" << NUM_TEST_SAMPLES 
                      << " samples. Current Accuracy: " 
                      << ((float)correct_predictions / (i + 1)) * 100.0 << "%" << endl;
        }
    }

    // 5. Output Final Results
    float final_accuracy = ((float)correct_predictions / NUM_TEST_SAMPLES) * 100.0;
    
    cout << "\n=================================================" << endl;
    cout << "               Simulation Complete               " << endl;
    cout << "=================================================" << endl;
    cout << "Total Test Samples : " << NUM_TEST_SAMPLES << endl;
    cout << "Correct Predictions: " << correct_predictions << endl;
    cout << "Final HW Accuracy  : " << final_accuracy << "%" << endl;
    cout << "=================================================" << endl;

    return 0; 
}