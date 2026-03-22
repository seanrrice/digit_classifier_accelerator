create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "T:/Documents/ECE574/Labs/digit_classifier_accelerator/knn_accelerator/knn_accelerator/hls/syn/verilog/knn_accelerator_dadddsub_64ns_64ns_64_7_full_dsp_1_ip.tcl"
source "T:/Documents/ECE574/Labs/digit_classifier_accelerator/knn_accelerator/knn_accelerator/hls/syn/verilog/knn_accelerator_dcmp_64ns_64ns_1_2_no_dsp_1_ip.tcl"
source "T:/Documents/ECE574/Labs/digit_classifier_accelerator/knn_accelerator/knn_accelerator/hls/syn/verilog/knn_accelerator_dmul_64ns_64ns_64_7_max_dsp_1_ip.tcl"
source "T:/Documents/ECE574/Labs/digit_classifier_accelerator/knn_accelerator/knn_accelerator/hls/syn/verilog/knn_accelerator_dsqrt_64ns_64ns_64_57_no_dsp_1_ip.tcl"
