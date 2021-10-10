;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lockstep_template) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;; (lockstep-template lst1 lst2) PURPOSE
;; Examples:
(check-expect (lockstep-template empty empty) ANSWER)
(check-expect (lockstep-template (list 1) (list 2)) ANSWER)
(check-expect (lockstep-template (list 5 3 7) (list 8 4 1)) ANSWER)

;; lockstep-template (listof X) (listof X) -> Any
;;     Requires: (length lst1) = (length lst2)
(define (lockstep-template lst1 lst2)
  (cond [(empty? lst1) ...]
        [(cons? lst1) (... (first lst1) ... (first lst2) ...
                          (lockstep-template (rest lst1) (rest lst2)))]))

;; Tests
