set ModuleHierarchy {[{
"Name" : "knn_accelerator", "RefName" : "knn_accelerator","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "test_data","RefName" : "test_data","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_knn_distance_and_sort_fu_172", "RefName" : "knn_distance_and_sort","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_knn_distance_and_sort_Pipeline_init_top_k_fu_126", "RefName" : "knn_distance_and_sort_Pipeline_init_top_k","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "init_top_k","RefName" : "init_top_k","ID" : "4","Type" : "pipeline"},]},
			{"Name" : "grp_knn_distance_and_sort_Pipeline_train_loop_fu_136", "RefName" : "knn_distance_and_sort_Pipeline_train_loop","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "train_loop","RefName" : "train_loop","ID" : "6","Type" : "pipeline"},]},
			{"Name" : "grp_knn_distance_and_sort_Outline_sort_loop_i_fu_151", "RefName" : "knn_distance_and_sort_Outline_sort_loop_i","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "sort_loop_i","RefName" : "sort_loop_i","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_knn_distance_and_sort_Pipeline_sort_loop_j_fu_32", "RefName" : "knn_distance_and_sort_Pipeline_sort_loop_j","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "sort_loop_j","RefName" : "sort_loop_j","ID" : "10","Type" : "pipeline"},]},]},]},
			{"Name" : "grp_knn_distance_and_sort_Pipeline_copy_top_k_fu_157", "RefName" : "knn_distance_and_sort_Pipeline_copy_top_k","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "copy_top_k","RefName" : "copy_top_k","ID" : "12","Type" : "pipeline"},]},]},
	{"Name" : "grp_knn_majority_vote_fu_189", "RefName" : "knn_majority_vote","ID" : "13","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_knn_majority_vote_Pipeline_VITIS_LOOP_95_1_fu_42", "RefName" : "knn_majority_vote_Pipeline_VITIS_LOOP_95_1","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_95_1","RefName" : "VITIS_LOOP_95_1","ID" : "15","Type" : "pipeline"},]},
			{"Name" : "grp_knn_majority_vote_Pipeline_VITIS_LOOP_106_2_fu_48", "RefName" : "knn_majority_vote_Pipeline_VITIS_LOOP_106_2","ID" : "16","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_106_2","RefName" : "VITIS_LOOP_106_2","ID" : "17","Type" : "pipeline"},]},
			{"Name" : "grp_knn_majority_vote_Pipeline_VITIS_LOOP_119_3_fu_59", "RefName" : "knn_majority_vote_Pipeline_VITIS_LOOP_119_3","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_119_3","RefName" : "VITIS_LOOP_119_3","ID" : "19","Type" : "pipeline"},]},]},]},]
}]}