# Math operations
> (+ 2 2)
4

> (cos pi) 
#i-1.0
#i is for inexact number

> (+ 2 (+ 3 4))
9

> (+ 2 3 4)
9

> (expt 16 1/2)
4

# String operations
> "hello world"
"hello world"

> (string-append "hello " "world")
"hello world"

> (+ (string-length "hello world") 20)
31

> (number->string 42)
"42"

> (string->number "hello world")
#false

# Boolean operations
> (and #true #true)
#true

> (or #true #false)
#true

> (or #false #false)
#false

> (not #false)
#true

> (> 10 9)
#true

> (< -1 0)
#true

> (= 42 9)
#false

# (require 2htdp/image)
> (circle 10 "solid" "red")
__image__

> (rectangle 30 20 "outline" "blue")
__image__

> (square 10 "solid" "red"))
__image__

> (overlay (circle 5 "solid" "red")
           (rectangle 20 20 "solid" "blue"))
__image__

> (* (image-width __image__) (image-height --image-height--))
--number--

> (place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))
__image__

