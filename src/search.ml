(* 2分木を表す型*)
type tree_t =
    | Empty
    | Node of tree_t * int * tree_t

(* 2分木の例 *)
let t0 = Empty
let t1 = Node (Empty, 7, Empty)
let t2 = Node (Empty, 3, t1)
let t3 = Node (Empty, 24, Empty)
let t4 = Node (t2, 17, t3)

(* 目的：木の中に m があるか判定する *)
(* search : tree_t -> int -> bool *)
let rec search tree m = match tree with
    Empty -> false
    | Node (l, n, r) ->
        if m < n then search l m
        else if n < m search r m
        else n = m then true

(* テスト *)
let test0 = search t0 0 = false
let test 1 = search t4 17 = true
let test 1 = search t4 7 = true
let test 1 = search t4 5 = false
let test 1 = search t4 20 = false
