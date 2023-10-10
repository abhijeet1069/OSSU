(* Programming Languages, Dan Grossman *)
(*
REPL (Read Eval Print Loop)
*)

val x = 34;

val y = x + 1;

val z = if y > 0 then 34 else 4;

(* Else is necessary in SML*)
(* val q = if y > 0 then 0 *)

val q = if y > 0 then 0 else 1;

(* -5 does not work for SML. ~5 has to be used*)
val a = ~5;

val w = 1;

(* fun is a key word so not allowed*)
val fun2 = 34;

(* / is not allowed for int in SML. We use div *)
val v = x div w;

val fourteen = 7 - 7;

