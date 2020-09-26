(* 目的：原点から受け取った座標 pair までの距離を求める *)
(* kyori : float * float -> float *)
let kyori pair = match pair with
    (a, b) -> sqrt (a *. a +. b *. b)

(* テスト *)
let test1 = kyori (3., 4.) = 5.
let test1 = kyori (5., 12.) = 13.
let test1 = kyori (8., 15.) = 17.
