open Base;; (* open the Base module *)

let ratio x y =
  (* convet x and y to floats using Float.of_int *)
  Float.of_int x / Float.of_int y;;

ratio 4 7;;


(* opening Float in the local scope of the ratio definition *)
let ratio x y =
  let open Float.O in
  of_int x / of_int y;;
