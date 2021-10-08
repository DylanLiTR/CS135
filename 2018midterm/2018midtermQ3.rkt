;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define (f x y z) (min (max x y) (- x z)))
(define (g x) (- x 3))

;; a)
;; First:
(min (max 3 7) (- 7 2))

;; Second:
(min 7 (- 7 2))

;; Final:
5

;; b)
;; First:
(- (+ 7 3 2 4) (max 3 -2 4))

;; Second:
(- 16 (max 3 -2 4))

;; Final:
12

;; c)
;; First:
(g (g (- 4 3)))

;; Second:
(g (g 1))

;; Final:
-5