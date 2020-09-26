(* Get how many chocolates of 126 yen by given money *)
(* 目的：所持金が与えられたら 126 円のチョコレートをいくつ買えるかを求める *)
(* chocolate : int -> int *)
let chocolate x = x / 126

(* Tests *)
let test1 = chocolate 100 = 0
let test2 = chocolate 252 = 2
let test3 = chocolate 500 = 3
