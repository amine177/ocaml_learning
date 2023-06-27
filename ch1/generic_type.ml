(* a function with generic types is one where the type inference *)
(* doesn't resolve to a concrete type. We give an example of such *)
(* function. The purpose of generic types is to create plymorphism, *)
(* that is, create code that can work with different types. *)
(* In Ocaml jargon this leads to a polymoriphsm called *)
(* 'parametric polymorphism'.*)
(* The inferred type signature by the ocaml type system is *)
(* val generic_fn : ('a -> bool) -> 'a -> 'a -> 'a = <fun> *)
(* generic_fn takes three paramters: *)
(* - a function with ('a -> bool) that is is a function that *)
(* takes as argument a type variable 'a and returns bool; *)
(* - a generic parameter of type variable 'a *)
(* - a generic parameter of type variable 'a *)
(* returns a generic value of type variable 'a *)
(* 'a is a type variable indicating the the type is generic *)
(* and can be fulfilled by any kind of type. *)

let generic_fn predicate arg1 arg2 =
  if predicate arg1 then arg1 else arg2;;

let pred1 arg1 =
  if arg1 / 2  > 0 then  true else false;;

let string_pred1 s = String.length s > 3;;

generic_fn string_pred1 "CHM" "LUZU";;
