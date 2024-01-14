(* This is a comment. This is our first program. *)

val x = 34; (* int *)
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17; (* variable binding *)
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2); (* using earlier bindings *)
(* static environment: x : int, y : int, z : int
 (* addition has type int if both the sub-expressions on both sides have type int *) *)
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val q = z + 1;
(* static environment: x : int, y : int, z : int, q : int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70, q --> 71 *)

(* absolute value of z *)
val abs_of_z = if z < 0 then 0 - z else z; (* bool *) (* int *)
(* static environment: ..., abs_of_z : int *)
(* dynamic environment: ..., abs_of_z --> 70 *)

val abs_of_z_simpler = abs z; (* or we can also use: abs(z) *)
