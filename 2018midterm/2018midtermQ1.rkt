;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define (max-circles a r)
  (floor (/ (* a (sqrt 3)) (* 6 (sqr r)))))

(check-within (max-circles 100 1) 28 0.01)

;; f(x) = (x^y - 4^y) / (sqrt(z) + 1)