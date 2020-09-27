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

(* 目的：学生リストを受け取ったら、その中の最高点を返す *)
(* max_score : gakusei_t list -> int *)
let rec max_score lst = match lst with
    [] -> -1
    | {namae=n; tensuu=t; seiseki=s} :: rest ->
        let t_max = max_score rest in
            if t > t_max
                then t
                else t_max

(* テスト *)
let test1 = max_score [gakusei1] = 70
let test2 = max_score [gakusei1; gakusei2] = 90
let test3 = max_score [gakusei1; gakusei2; gakusei3] = 90
