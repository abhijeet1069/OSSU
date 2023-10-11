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
Addition:
    - Syntax: e1+e2 where e1 and e2 are expressions
    - Type-checking: type int but only if e1 and e2 have type int in the same static environment, else
                    does not type-check
    - Evaluation: evaluate e1 to v1 and e2 to v2 in the same dynamic environment and then produce
                    the sum of v1 and v2
  
Variables:
    - Syntax: a sequence of letters, underscores, etc.
    - Type-checking: look up the variable in the current static environment and use that type
    - Evaluation: look up the variable in the current dynamic environment and use that value
  
Conditionals:
    - Syntax: if e1 then e2 else e3 where e1, e2, and e3 are expressions
    - Type-checking: using the current static environment, a conditional type-checks only if (a) e1 has
                     type bool and (b) e2 and e3 have the same type. The type of the whole expression is the type of
                     e2 and e3.
    - Evaluation: under the current dynamic environment, evaluate e1. If the result is true, the result
                    of evaluating e2 under the current dynamic environment is the overall result. If the result is
                    false, the result of evaluating e3 under the current dynamic environment is the overall result.

Boolean constants:
    - Syntax: either true or false
    - Type-checking: type bool in any static environment
    - Evaluation: to itself in any dynamic environment (it is a value)
 
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

