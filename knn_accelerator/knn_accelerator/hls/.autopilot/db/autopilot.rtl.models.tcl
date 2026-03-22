set SynModuleInfo {
  {SRCNAME knn_distance_and_sort_Outline_init_top_k MODELNAME knn_distance_and_sort_Outline_init_top_k RTLNAME knn_accelerator_knn_distance_and_sort_Outline_init_top_k}
  {SRCNAME knn_distance_and_sort_Outline_train_loop MODELNAME knn_distance_and_sort_Outline_train_loop RTLNAME knn_accelerator_knn_distance_and_sort_Outline_train_loop
    SUBMODULES {
      {MODELNAME knn_accelerator_dadddsub_64ns_64ns_64_7_full_dsp_1 RTLNAME knn_accelerator_dadddsub_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME knn_accelerator_dmul_64ns_64ns_64_7_max_dsp_1 RTLNAME knn_accelerator_dmul_64ns_64ns_64_7_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME knn_accelerator_dsqrt_64ns_64ns_64_57_no_dsp_1 RTLNAME knn_accelerator_dsqrt_64ns_64ns_64_57_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 56 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME knn_distance_and_sort_Outline_sort_loop_i MODELNAME knn_distance_and_sort_Outline_sort_loop_i RTLNAME knn_accelerator_knn_distance_and_sort_Outline_sort_loop_i
    SUBMODULES {
      {MODELNAME knn_accelerator_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME knn_accelerator_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME knn_distance_and_sort MODELNAME knn_distance_and_sort RTLNAME knn_accelerator_knn_distance_and_sort
    SUBMODULES {
      {MODELNAME knn_accelerator_knn_distance_and_sort_distances_RAM_AUTO_1R1W RTLNAME knn_accelerator_knn_distance_and_sort_distances_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME knn_accelerator_knn_distance_and_sort_labels_RAM_AUTO_1R1W RTLNAME knn_accelerator_knn_distance_and_sort_labels_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME knn_majority_vote MODELNAME knn_majority_vote RTLNAME knn_accelerator_knn_majority_vote
    SUBMODULES {
      {MODELNAME knn_accelerator_sparsemux_7_2_4_1_1 RTLNAME knn_accelerator_sparsemux_7_2_4_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME knn_accelerator_knn_majority_vote_counts_RAM_AUTO_1R1W RTLNAME knn_accelerator_knn_majority_vote_counts_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME knn_accelerator MODELNAME knn_accelerator RTLNAME knn_accelerator IS_TOP 1
    SUBMODULES {
      {MODELNAME knn_accelerator_gmem_x_test_m_axi RTLNAME knn_accelerator_gmem_x_test_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME knn_accelerator_gmem_x_train_m_axi RTLNAME knn_accelerator_gmem_x_train_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME knn_accelerator_gmem_y_train_m_axi RTLNAME knn_accelerator_gmem_y_train_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME knn_accelerator_gmem_y_test_m_axi RTLNAME knn_accelerator_gmem_y_test_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME knn_accelerator_control_s_axi RTLNAME knn_accelerator_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME knn_accelerator_control_r_s_axi RTLNAME knn_accelerator_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
