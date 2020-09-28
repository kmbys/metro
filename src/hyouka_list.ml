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

(* 目的：学生データのリストに成績を入れる *)
(* hyouka_list : gakusei_t list -> gakusei_t list *)
let hyouka_list lst =
    (* 目的：学生データに成績を入れる*)
    (* hyouka : gakusei_t -> gakusei_t *)
    let hyouka gakusei = match gakusei with
        {namae=n; tensuu=t; seiseki=s} ->
            {namae=n; tensuu=t; seiseki =
                if t >= 80 then "A"
                else if t >= 70 then "B"
                else if t >= 60 then "C"
                else "D"}
    in List.map hyouka lst
