(* Programming Languages, Dan Grossman *)
(* Section 1: Some Errors *)

(* 
Whenever writing an expression, keep in mind the the SYNTAX and SEMANTICS:
    - Syntax
        Sequence of letters, digits, _, not starting with digit
    - Semantics
        - Type checking rules
            - Lookup type in current static environment
            - Produces a type(int bool unit) or fails
        - Evaluation rules
            - Lookup 
            - Produces a value in current dynamic environment
 *)

 (* For ex: 
    1) Addition expression:
    Syntax:
        e1 + e2 where e1 and e2 are expressions
    Type-checking
        If e1 and e2 have type int, then e1+e2 has type int
    Evaluation
        If e1 evaluates to v1 and e2 evaluates to v2,
        then e1+e2 evaluates to sum of v1 and v2

    All values are expressions.
    Not all expressions are values.

    2) Conditional expression:
    Syntax:
        if e1 then e2 else e3
        where if, then, and else are keywords and e1, e2, e3 are sub-expressions
    Type-checking:
        first e1 must have type bool
        e2 and e3 can have any type, but they must have the same type t
        the type of the entire expression is also type t
    Evaluation rules:
        first evaluate e1 to a value call it v1
        if it's true, evaluate e2 and that result is the whole expression's result
        else, evaluate e3 anf that result is the whole expression's result
  *)

val x = 34

val y = x + 1

val z = if y > 0 then false else x < 4

val q = if y > 0 then 0 else 42

val a = ~5

val w = 0

val funny = 34

val v = x div (w + 1)

val fourteen = 7 + 7

