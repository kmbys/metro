(* 目的：自然数 m, n の最大公約数を求める *)
(* gcd -> int -> int -> int *)
let rec gcd m n = (
    print_int m;
    print_string ", ";
    print_int n;
    print_newline ();
    if n = 0
        then m
        else gcd n (m mod n))
