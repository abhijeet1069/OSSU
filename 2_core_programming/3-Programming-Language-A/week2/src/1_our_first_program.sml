(* Programming Languages, Dan Grossman *)
(* Section 1: Our first ML program - Variable Bindings 

Variable binding - The association between a variable name(identifier) and its value. *)

(* Execute : sml 1-first.sml *)
(* Once SML programs are leaded we can perform calculations over it, like python in IDLE *)
(* A value is an expression that, has no more computation to do," For ex:
  17 is a value, but 8+9 is not. All values are expressions. Not all expressions are values.
 *)
val x = 34;
(* static environment: x-->int *)
(* dynamic environment: x-->34 *)

val y = 17;
(* static environment: y-->int, x-->int *)
(* dynamic environment: y-->17, x-->34 *)

(* to evaluate an addition, evaluate the subexpressions and add *)
(* to evaluate a variable, lookup its value in the environment  *)

val z = (x + y) + (y + 2);
(* static environment: z-->int, y-->int, x-->int *)
(* dynamic environment: z-->70, y-->17, x-->34 *)

val q = z+1;
(* static environment: q-->int, z-->int, y-->int, x-->int *)
(* dynamic environment: q-->71, z-->70, y-->17, x-->34 *)
 
val abs_of_z = if z < 0 then 0 - z else  z;
(* static environment: abs_of_z-->int, q-->int, z-->int, y-->int, x-->int *)
(* dynamic environment: abs_of_z-->70, q-->71, z-->70, y-->17, x-->34 *)

(* inbuilt function in SML *) 
val abs_of_z_simpler = abs z;

(*
Syntax is how you write something

Semantics is what that something means
  - Type-checking (before program runs)
  - Evaluation (as program runs)

For variable bindings:
  - Type check expression and extend static environment
  - Evaluate expression and extend dynamic environment
*)
