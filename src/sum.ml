(* 目的：整数のリストを受け取ったら合計を返す *)
(* sum : int list -> int *)
let rec sum lst = match lst with
    [] -> 0
    | first :: rest -> first + sum rest

(* テスト *)
let test1 = sum [] = 0
let test2 = sum [7] = 7
let test3 = sum [3; 2] = 5
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8] = 36
