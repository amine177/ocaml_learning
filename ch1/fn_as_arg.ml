open Base;;

let sum_with_criteria criteria_fn arg1 arg2 =
  print_int
  (if criteria_fn arg1 then arg1 else 0)
  + (if criteria_fn arg2 then arg2 else 0);;


(* annotated types *)
let sum_with_test (test: int -> bool) (arg1 : int) (arg2: int) : int =
  (if test arg1 then arg1 else 0)
  + (if test arg2 then arg2 else 0);;


let is_even arg1 =
  arg1 % 2 = 0;;

(* let not_null arg1 = *)
  (* if (arg1 = 0 then false else true);; *)

sum_with_criteria is_even 4 5;;
sum_with_criteria is_even 4 6;;

(* sum_with_criteria not_null 10 6;; *)
(* sum_with_criteria not_null 10 0;; *)
