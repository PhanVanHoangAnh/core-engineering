
BASE="algorithms"

mkdir -p "$BASE"

create_group () {
  group="$1"
  shift
  mkdir -p "$BASE/$group"
  i=1
  for name in "$@"; do
    printf -v num "%03d" "$i"
    mkdir -p "$BASE/$group/${num}_${name}"
    ((i++))
  done
}

create_group "01_basic" \
linear_search \
binary_search \
two_pointers \
sliding_window \
prefix_sum \
difference_array \
kadane_max_subarray

create_group "02_sorting" \
bubble_sort \
selection_sort \
insertion_sort \
merge_sort \
quick_sort \
heap_sort \
counting_sort \
radix_sort \
bucket_sort

create_group "03_recursion_backtracking" \
recursion_basics \
backtracking \
permutation_generation \
combination_generation \
subset_generation \
n_queens \
sudoku_solver

create_group "04_basic_data_structures" \
stack_algorithms \
queue_algorithms \
monotonic_stack \
monotonic_queue \
linked_list_algorithms \
floyd_cycle_detection

create_group "05_tree_algorithms" \
tree_dfs_traversal \
tree_bfs_traversal \
binary_search_tree_ops \
lowest_common_ancestor \
tree_diameter \
euler_tour \
binary_lifting

create_group "06_graph_basics" \
bfs \
dfs \
topological_sort \
cycle_detection_directed \
cycle_detection_undirected

create_group "07_shortest_path" \
dijkstra \
bellman_ford \
floyd_warshall \
spfa \
astar

create_group "08_mst" \
kruskal \
prim

create_group "09_union_find" \
disjoint_set_union \
path_compression \
union_by_rank

create_group "10_greedy" \
activity_selection \
huffman_coding \
interval_scheduling \
job_scheduling \
fractional_knapsack

create_group "11_dynamic_programming" \
fibonacci_dp \
coin_change \
longest_increasing_subsequence \
longest_common_subsequence \
edit_distance \
knapsack_01 \
knapsack_unbounded \
matrix_chain_multiplication \
dp_on_grid \
dp_on_tree \
bitmask_dp

create_group "12_range_query" \
sparse_table \
segment_tree \
lazy_segment_tree \
fenwick_tree

create_group "13_string_algorithms" \
kmp \
rabin_karp \
z_algorithm \
trie \
aho_corasick \
suffix_array \
lcp_array \
suffix_automaton

create_group "14_computational_geometry" \
convex_hull_graham \
convex_hull_jarvis \
line_intersection \
sweep_line \
closest_pair_points

create_group "15_advanced_graph" \
tarjan_scc \
kosaraju \
articulation_points \
bridges \
biconnected_components

create_group "16_flow_algorithms" \
ford_fulkerson \
edmonds_karp \
dinic \
min_cost_max_flow

create_group "17_matching" \
hungarian \
hopcroft_karp \
blossom

create_group "18_advanced_data_structures" \
treap \
splay_tree \
red_black_tree \
persistent_segment_tree \
kd_tree

create_group "19_randomized" \
randomized_quicksort \
monte_carlo \
las_vegas \
reservoir_sampling

create_group "20_optimization" \
simulated_annealing \
genetic_algorithm \
branch_and_bound \
meet_in_the_middle

echo "Done."
