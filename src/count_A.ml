(* 学生ひとり分のデータを表す型 *)
type gakusei_t = {
    namae : string; (* 名前 *)
    tensuu : int; (* 点数 *)
    seiseki : string; (* 成績 *)
}

(* 学生データの例 *)
let gakusei1 = {namae="asai"; tensuu=70; seiseki="B"}
let gakusei2 = {namae="tanaka"; tensuu=90; seiseki="A"}
let gakusei3 = {namae="yamada"; tensuu=60; seiseki="C"}

(* 目的：学生リストを受け取り成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let count_A lst =
    (* 目的：学生の成績が A かを調べる *)
    (* seiseki_A : gakusei_t -> bool *)
    let seiseki_A gakusei = match gakusei with
        {namae=n; tensuu=t; seiseki=s} ->
            s = "A"
    in List.length (List.filter seiseki_A lst)
