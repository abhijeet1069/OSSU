;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sign x)
  (cond
  [(> x 0) 1]
  [(= x 0) 0]
  [(< x 0) -1]))

(define (show msg)
  (cond
   []
   ))

(check-expect (sign 12) 1)
(check-expect (sign -12) -1)
(check-expect (sign 0) 0)