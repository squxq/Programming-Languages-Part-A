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

(* For contitionals or if then else expressions
Syntax:
  if e1 then e2 else e3
  where if, then, and else are keywords and
  e1, e2, and e3 are sub-expressions

Type-checking:
  first - e1 must have type bool
  e2 and e3 can have any type (let's call it t), but they must have the same type t
  the type of the entire expression is also t

Evaluation rules:
  first evaluate e1 to a value call it v1
  if it's true, evaluate e2 and that result is the whole expression's result
  else, evaluate e3 and that result is the whole expression result
*)

(* For boolean constants:
Syntax:
  either true or false

Type-checking rules:
  type bool in any static environment

Evaluation rules:
  to itself in any dynamic environment (it is a value)
*)

(* For less-than comparisons:
Syntax:
  e1 < e2, where e1 and e2 are expressions

Type-checking rules:
  if e1 and e2 have type int in the same static environment, then e1 < e2 has type bool
  else it does not type-check

Evaluation rules:
  evaluate e1 to v1 and e2 to v2 in the same dynamic environment, then e1 < e2
  evaluates to true if v1 is less than v2; otherwise it evaluates to false
*)
