# Prologue - How to program

## Math operations

```shell
> (+ 2 2)
4

> (cos pi)
#i-1.0
i is for inexact number

> (+ 2 (+ 3 4))
9

> (+ 2 3 4)
9

> (expt 16 1/2)
4
```

## String operations

```shell
> "hello world"
"hello world"

> (string-append "hello " "world")
"hello world"

> (string-length "hello")
5

> (number->string 42)
"42"

> (string->number "hello world")
#false

;compare strings
(string=? "hello" "Hello")
#false

```

## Boolean operations

```shell
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
```

## Basic image manipulation

```shell

(require 2htdp/image)
> (circle 10 "solid" "red")

> (rectangle 30 20 "outline" "blue")

> (square 10 "solid" "red"))

> (overlay (circle 5 "solid" "red")
           (rectangle 20 20 "solid" "blue"))

> (* (image-width __image__) (image-height --image-height--))


> (place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))

```

## Functions

```shell
(define (y x) (* x x))
(y 100)
> 10000
```

## Cond expression

```shell
(define (compare x y)
  (cond
    [(> x y) "x is greater"]
    [(< x y) "y is greater"]
    [else "x is equal to y"]))

; "x is equal to y"
(compare 2 2)

; "y is greater"
(compare 2 3)

```

## If expression

```shell

(if (> 2 3)
    "Hi"
    "Hello")

> "Hello"
```

## check-expect

```shell
(define (compare x y)
  (cond
    [(> x y) "x is greater"]
    [(< x y) "y is greater"]
    [else "x is equal to y"]))

(check-expect (compare 2 2) "x is equal to y")
(check-expect (compare 2 3) "y is greater")
(check-expect (compare 3 2) "x is greater")

> All 3 tests passed!
```

## Signature

```shell
(: area-of-square (Number -> Number))

(define (area-of-square len)
  (sqr len))

; 413.3089
(area-of-square 20.33)

;signature violation : sqr: expected a number; given #true
(area-of-square #true)
------------------------------------------------------------

(: a->b (Boolean Boolean -> Boolean))
(define (a->b a b)(or (not a) b))

;true
(a->b #false #false)

```

## Enums

```shell
(: isCute ((enum "cat" "snake" "dog") -> Boolean))
 
(define (isCute pet)
  (cond
    [(string=? pet "cat") #t]
    [(string=? pet "dog") #t]
    [(string=? pet "snake") #f]))

; #false
(isCute "snake")

; #true
(isCute "dog")

;signature violation
(isCute "rabbit")
```

## Format string

```shell
(format "Dear Dr. ~a ~a:" "Flatt" 23)
> "Dear Dr. Flatt 23:"
```

## Throw Error

```shell
(define num 0)
(if (= num 0) (error "can't divide by 0") (/ 1 num))

> can't divide by 0
```

## Global variable

```shell
; the current price of a movie ticket:
(define CURRENT-PRICE 5)
```

## animate

animate starts a canvas, and starts a clock that ticks 28 times per second.

```shell
;landing of rocket
(require 2htdp/image)
(require 2htdp/universe)

; constants 
(define WIDTH  200)
(define HEIGHT 200)
(define SCENE  (empty-scene WIDTH HEIGHT)) ; short for empty scene 
(define ROCKET .)
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 3)))
 
; functions
(define (picture-of-rocket.v5 h)
  (cond
    [(<= h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 70 h SCENE)]
    [(> h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 70 ROCKET-CENTER-TO-TOP SCENE)])) 

(animate picture-of-rocket.v5)
```

## Final version of descending rocket with time and velocity

```shell
; descending rocket 

(require 2htdp/image)
(require 2htdp/universe)

; properties of the "world" and the descending rocket
(define WIDTH  300)
(define HEIGHT  300)
(define V 10)
(define X 50)
 
; graphical constants 
(define MTSCN  (empty-scene WIDTH HEIGHT)) ; short for empty scene 
(define ROCKET .)
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))

(define (distance t)
  (* V t))
 
; functions
(define (picture-of-rocket.v6 t)
  (cond
    [(<= (distance t) ROCKET-CENTER-TO-TOP)
     (place-image ROCKET X (distance t) MTSCN)]
    [(> (distance t) ROCKET-CENTER-TO-TOP)
     (place-image ROCKET X ROCKET-CENTER-TO-TOP MTSCN)]))
 

(animate picture-of-rocket.v6)
```
