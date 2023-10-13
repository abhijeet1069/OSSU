(*
fun sum_list (arr : int list) = 
    if null arr
        then 0
    else
        hd(arr) + sum_list(tl(arr));
*)

fun separate_odd(arr: int list) =
    if null arr
    then []
    else
        val temp = hd(arr)
        if temp mod 2 <> 0
        then temp :: separate_odd(tl(arr))
        else separate_odd(tl(arr));

        

(*
fun countdown (x : int) =
    if x=0
    then [400]
    else 
        x :: countdown(x-1);
*)

val res = separate_odd([1,2,4,8,10,12,13,15])