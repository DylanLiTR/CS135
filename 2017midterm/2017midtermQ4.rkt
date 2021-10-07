;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define a 12)
(define b (/ a 2))

(define x1 (+ a 1))
(define y1 a)

(define x2 (/ a 3))
(define y2 6)

(define (mdist x1 y1 x2 y2)
  (+ (abs (− x1 x2))
     (abs (− y1 y2))))

;; a) (mdist 3 7 4 6)
(+ (abs (− 3 4))
     (abs (− 7 6)))

(+ (abs -1)
     (abs (- 7 6)))

2

;; b) (mdist y2 x1 x2 y1)
(mdist 6 (+ a 1) (/ a 3) a)

(mdist 6 13 4 12)

3

;; c) (or (< 13 5) (> 2 3))
(or false (> 2 3))

(or (> 2 3))

false

;; d) (make-posn (posn-x (make-posn 7 3)) (posn-y (make-posn y2 (+ 3 a))))
(make-posn (posn-x (make-make-posn 7 3)) (posn-y (make-posn y2 (+ 3 a))))

(make-posn 7 (posn-y (make-posn y2 (+ 3 a))))

(make-make-posn 7 15)

;; e) (cond
;;      [(symbol=? ’papaya ’bumblebee) 83]
;;      [(>= x1 (+ x2 x2)) x2]
;;      [else y1])
(cond
  [false 83]
  [(>= x1 (+ x2 x2)) x2]
  [else y1])

(cond
  [(>= x1 (+ x2 x2)) x2]
  [else y1])

4