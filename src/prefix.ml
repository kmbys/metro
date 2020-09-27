(* 目的：受け取った lst の要素それぞれの先頭に n をくっつける*)
(* add_to_each : 'a -> 'a list list -> 'a list list *)
let rec add_to_each n lst = match lst with
   [] -> []
   | first :: rest -> (n :: first) :: add_to_each n rest

(* テスト *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]]

(* 目的：受け取った lst の接頭語のリストを返す *)
(* prefix : 'a list -> 'a list list *)
let rec prefix lst = match lst with
    [] -> []
    | first :: rest ->
        [first] :: add_to_each first (prefix rest)

(* テスト *)
let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1; 2] = [[1]; [1; 2]]
let test8 = prefix [1; 2; 3; 4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]]
