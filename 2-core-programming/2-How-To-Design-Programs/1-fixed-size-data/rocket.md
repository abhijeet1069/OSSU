# Variables and Functions
> (define x 23)
> (* x x)
529

> (define (fn x y) (* x y))
> (fn 11 212)
2332

# Cond expression
(define (sign x)
  (cond
  [(> x 0) 1]
  [(= x 0) 0]
  [(< x 0) -1]))

(check-expect (sign 12) 1)
(check-expect (sign -12) -1)
(check-expect (sign 0) 0)

# Rocket v6
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ROCKET V6 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; properties of the "world" and the descending rocket
(define WIDTH  300)
(define HEIGHT 300)
(define V 2)
(define X (/ WIDTH 2))
 
; graphical constants 
(define EMPTYSCN  (empty-scene WIDTH HEIGHT)) ; short for empty scene 
(define ROCKET __image__)
(define LAND-ON-GROUND
  (- HEIGHT (/ (image-height ROCKET) 3)))
 
; functions
(define (distance t)
  (* V t))

(define (picture-of-rocket.v6 t)
  (cond
    [(<= (distance t) LAND-ON-GROUND)
     (place-image ROCKET X (distance t) EMPTYSCN)]
    [(> (distance t) LAND-ON-GROUND)
     (place-image ROCKET X LAND-ON-GROUND EMPTYSCN)]))
 

(animate picture-of-rocket.v6)