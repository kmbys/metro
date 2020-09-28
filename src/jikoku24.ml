(* 時刻を表す型 *)
type jikoku_t =
    Gozen of int
    | Gogo of int
    | Noon
    | Midnight

(* 目的：24時間表示の時刻を返す *)
(* jikoku24 : jikoku_t -> int *)
let jikoku24 jikoku = match jikoku with
    Gozen (n) -> n
    | Gogo (n) -> n + 12
    | Noon -> 12
    | Midnight -> 0

(* テスト *)
let test1 = jikoku24(Gogo (3)) = 15
