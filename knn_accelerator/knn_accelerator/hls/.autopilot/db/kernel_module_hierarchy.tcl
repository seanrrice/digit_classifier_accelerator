set ModuleHierarchy {[{
"Name" : "knn_accelerator", "RefName" : "knn_accelerator","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "test_data","RefName" : "test_data","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_knn_distance_and_sort_fu_178", "RefName" : "knn_distance_and_sort","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_knn_distance_and_sort_Outline_init_top_k_fu_190", "RefName" : "knn_distance_and_sort_Outline_init_top_k","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "init_top_k","RefName" : "init_top_k","ID" : "4","Type" : "no"},]},
			{"Name" : "grp_knn_distance_and_sort_Outline_train_loop_fu_200", "RefName" : "knn_distance_and_sort_Outline_train_loop","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "train_loop","RefName" : "train_loop","ID" : "6","Type" : "no",
				"SubLoops" : [
				{"Name" : "feature_loop","RefName" : "feature_loop","ID" : "7","Type" : "no"},]},]},
			{"Name" : "grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215", "RefName" : "knn_distance_and_sort_Outline_sort_loop_i","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "sort_loop_i","RefName" : "sort_loop_i","ID" : "9","Type" : "no",
				"SubLoops" : [
				{"Name" : "sort_loop_j","RefName" : "sort_loop_j","ID" : "10","Type" : "no"},]},]},],
			"SubLoops" : [
			{"Name" : "copy_top_k","RefName" : "copy_top_k","ID" : "11","Type" : "no"},]},
	{"Name" : "grp_knn_majority_vote_fu_195", "RefName" : "knn_majority_vote","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "count_init_loop","RefName" : "count_init_loop","ID" : "13","Type" : "no"},
			{"Name" : "set_counts_loop","RefName" : "set_counts_loop","ID" : "14","Type" : "no"},
			{"Name" : "max_count_loop","RefName" : "max_count_loop","ID" : "15","Type" : "no"},]},]},]
}]}