;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define c 299792458) ; speed of light in a vacuum constant

;; a)
;; c is not a paramets of the function kinetic-energy because it is a constant, so it's value will
;;     be the same every time the function is run

;; b), c)
;; kinetic-energy: Num Num -> Num
;;     Requires: m >= 0, |v| < c
(define (kinetic-energy m v)
  (- (/ (* m (sqr c)) (sqrt (- 1 (/ (sqr v) (sqr c))))) (* m (sqr c))))

;; Tests:
(check-within (kinetic-energy 1000 10000000) (* 5 (expt 10 16)) (expt 10 15))