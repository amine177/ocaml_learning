open Base;; (* open the Base stdlib *)


(* define a function square that takes int as parameter and returns its *)
(* square as int *)
(* we explicitly annotated the object with their types *)
let square (x : int) : int = x * x;;

(square 2);;
(square (square 3));;
(square 5);;
