(* Programming Languages, Dan Grossman *)
(* Lists have same type of values. Similar to arrays

Appending in list:
    > val x = [2,3,4]
    > 2::x
    [2,2,3,4]

    > [6]::[[7,5],[6]];
    val it = [[6],[7,5],[6]] : int list list
    > [6]::[2,3];
     Error: operator and operand do not agree

Traversal in list:
    If arr = [v1,v2,v3,v4]
    null arr = true iff arr is []
    hd arr = v1
    tl arr = [v2,v3,v4]

*) 

fun sum_list (xs : int list) =
    if null xs
    then 0
    else hd(xs) + sum_list(tl(xs))

fun countdown (x : int) =
    if x=0
    then []
    else x :: countdown(x-1)

fun append (xs : int list, ys : int list) = (* part of the course logo :) *)
    if null xs
    then ys
    else hd(xs) :: append(tl(xs), ys)

(* More functions over lists, here lists of pairs of ints *)

fun sum_pair_list (xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd(xs)) + #2 (hd(xs)) + sum_pair_list(tl(xs))

fun firsts (xs : (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs))::(firsts(tl xs))

fun seconds (xs : (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs))::(seconds(tl xs))

fun sum_pair_list2 (xs : (int * int) list) =
    (sum_list (firsts xs)) + (sum_list (seconds xs))

(* SML has a quirky statement end syntax too*)
fun separate_odd(arr: int list) =
    if null arr
    then []
    else
        let val temp = hd(arr)
        in if temp mod 2 <> 0
            then temp :: separate_odd(tl(arr))
            else separate_odd(tl(arr))
        end
