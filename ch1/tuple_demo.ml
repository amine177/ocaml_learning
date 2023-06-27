open Stdio;;

(* Creating a tuple composed of 3 objects *)
let my_tuple = (3, "CHM", 5);;

(* extracting the tuple components using pattern matching *)
let (x, y, _) = my_tuple;;

(* using printf from Stdio to output to stdout *)
printf "x: %d\n" x;;
printf "y: %s\n" y;;
