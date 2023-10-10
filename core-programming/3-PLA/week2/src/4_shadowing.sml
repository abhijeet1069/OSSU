(* Programming Languages, Dan Grossman *)
(* Section 1: Examples to Demonstrate Shadowing 

Shadowing - Adding variable in the environment, when the variable was already in the environment. (Poor style)
JAVA has already blocked multiple variable declaration.
*)

(*
<hidden> : a was shadowed

Output:
val a = <hidden> : int 
val b = 20 : int
val a = <hidden> : int
val c = 20 : int
val d = 5 : int
val a = 6 : int
val f = 12 : int
*)

val a = 10
(* We are considering dynamic environment for the moment,
a -> 10 *)

val b = a * 2
(* a->10, b -> 20 *)

val a = 5 (* this is not an assignment statement, a has been shadowed. *)
(* a->5, b-> 20 *)

val c = b
(* a->5, b-> 20, c-> 20 *)

val d = a
(* a->5, b-> 20, c-> 20, d->5 *)

val a = a + 1 (* a shadowed again*)
(* a->6, b-> 20, c-> 20, d->5 *)

val f = a * 2

