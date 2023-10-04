;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname boolean) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;true
#true
;false
false


(define WIDTH 100)
(define HEIGHT 100)

;false
(> WIDTH HEIGHT)
;true
(>= WIDTH HEIGHT)

;false
(string=? "foo" "Foo")

;wide
(if (< WIDTH HEIGHT) "tall" "wide") 