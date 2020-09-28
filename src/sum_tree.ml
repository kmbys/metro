(* 2分木を表す型*)
type tree_t =
    | Empty
    | Node of tree_t * int * tree_t

(* 2分木の例 *)
let t0 = Empty
let t1 = Node (Empty, 3, Empty)
let t2 = Node (Empty, 7, t1)
let t3 = Node (Empty, 24, Empty)
let t4 = Node (t2, 17, t3)

(* 目的：木の中の整数の合計を返す*)
(* sum_tree : sum_tree -> int *)
let rec sum_tree tree = match tree with
    Empty -> 0
    | Node (l, n, r) -> sum_tree l + n + sum_tree r

(* テスト *)
let test0 = sum_tree t0 = 0
let test1 = sum_tree t1 = 3
let test1 = sum_tree t2 = 10
let test1 = sum_tree t3 = 24
let test1 = sum_tree t4 = 51
