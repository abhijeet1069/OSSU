# Variables and Functions
> (define x 23)
> (* x x)
529

> (define (fn x y) (* x y))
> (fn 11 212)
2332

# cond expression
Cond expression if else-if else statement.
(define (sign x)
  (cond
  [(> x 0) 1]
  [(= x 0) 0]
  [(< x 0) -1]))


# Landing of rocket: places image of rocket in an empty scene with height as variable
(require 2htdp/image)

(define (picture-of-rocket height)
    (place-image __image__ 50 height (empty-scene 100 60)))

(picture-of-rocket 0)

# Animating rocket

(require 2htdp/universe)
(animate picture-of-rocket)

# Conditonal expression
(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))

# Landing of rocket : Version 4 with rocket not sinking in ground
(require 2htdp/image)
(require 2htdp/universe)

; constants 
(define WIDTH  200)
(define HEIGHT 200)
(define EMPTSCN  (empty-scene WIDTH HEIGHT)) ; short for empty scene 
(define ROCKET __image__)
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))
 
; functions
(define (picture-of-rocket.v5 h)
  (cond
    [(<= h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 50 h EMPTSCN)]
    [(> h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 50 ROCKET-CENTER-TO-TOP EMPTSCN)]))


(animate picture-of-rocket.v5)