(* 目的：受け取った整数のリストを昇順に並べる *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst =
    (* 目的：n より小さい要素を取り出す *)
    (* take_less : int -> int list -> int list *)
    let take_less n lst =
        let less x = x < n
        in List.filter less lst
    (* 目的：n 以上の要素を取り出す *)
    (* take_greater : int -> int list -> int list *)
    in let take_greater n lst =
        let greater x = x >= n
        in List.filter greater lst
    in match lst with
        [] -> []
        | first :: rest ->
            (quick_sort (take_less  first rest))
            @ [first]
            @ (quick_sort (take_greater first rest))

(* テスト *)
let test1 = quick_sort [] = []
let test2 = quick_sort [4; 2; 3] = [2; 3; 4]
let test3 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]
let test4 = quick_sort [3; 2; 2] = [2; 2; 3]
