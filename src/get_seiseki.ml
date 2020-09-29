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

(* データが無いことを表す例外 *)
exception DataNashi

(* 目的：指定された学生の成績を返す *)
(* 見つからなかったら例外 DataNashi を起こす*)
(* get_seiseki : string -> gakusei_t list -> string *)
let rec get_seiseki name lst = match lst with
    [] -> raise DataNashi
    | {namae=n; tensuu=t; seiseki=s} :: rest ->
        if name = n then s
        else get_seiseki name rest
