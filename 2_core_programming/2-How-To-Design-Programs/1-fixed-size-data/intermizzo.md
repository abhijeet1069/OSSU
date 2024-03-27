# Structure Type Definitions

(define-struct [point x y z])
(define-struct point x y z)

(make-point 1 2 -1)

# BSL Tests
; check-expect compares the outcome and the expected value with equal?
(check-expect 3 3)
 
; check-member-of compares the outcome and the expected values with equal?
; if one of them yields #true, the test succeeds
(check-member-of "green" "red" "yellow" "green")
 
; check-within compares the outcome and the expected value with a predicate
;  like equal? but allows for a tolerance of epsilon for each inexact number 
(check-within (make-posn #i1.0 #i1.1) (make-posn #i0.9 #i1.2) 0.2)
 
; check-range is like check-within 
; but allows for a specification of an interval 
(check-range 0.9 #i0.6 #i1.0)
 
; check-error checks whether an expression signals (any) error
(check-error (/ 1 0))
 
; check-random evaluates the sequences of calls to random in the 
; two expressions such that they yield the same number
(check-random (make-posn (random 3) (random 9))
              (make-posn (random 3) (random 9)))
 
; check-satisfied determines whether a predicate produces #true
; when applied to the outcome, that is, whether outcome has a certain property
(check-satisfied 4 even?)