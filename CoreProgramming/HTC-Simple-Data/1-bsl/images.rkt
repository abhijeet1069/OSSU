;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;use image functions from 2nd edition of how to design programs
(require 2htdp/image)

;circle
(circle 10 "solid" "red")

;rectangle
(rectangle 30 60 "outline" "blue")

;text
(text "hello" 24 "orange")

;above produces an image with all arguments stacked up and lined up on their horizontal centers
(above (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

;beside produces an image with all arguments stacked up and lined up on their vertical centers
(beside (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

;overlay produces an image with all arguments stacked up and placed on their common centers
(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))