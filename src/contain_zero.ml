(* 目的：受け取ったリストに 0 が含まれているかを真偽値で返す *)
(* contain_zero : int list -> bool *)
let rec contain_zero lst = match lst with
    [] -> false
    | first :: rest ->
        if first = 0
            then true
            else contain_zero rest

(* テスト *)
let test1 = contain_zero [] = false
let test2 = contain_zero [0; 1; 2; 3] = true
let test3 = contain_zero [1; 2; 0; 3] = true
let test4 = contain_zero [1; 2; 3; 4] = false
