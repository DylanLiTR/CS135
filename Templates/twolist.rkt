;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname twolist) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;; Case 1: processing one list

;; one-of-two-template: (listof Any) (listof Any) -> (listof Any)
(define (one-of-two-template lst1 lst2)
  (cond [(empty? lst1) ...]
        [else (... (first lst1) ... (one-of-two-template (rest lst1) lst2))]))

;; Case 2: processing in lockstep

;; lockstep-template: (listof Any) (listof Any) -> (listof Any)
;;     Requires: (length lst1) = (length lst2)
(define (lockstep-template lst1 lst2)
  (cond [(empty? lst1) ...]
        [else (... (first lst1) ... (first lst2) ...
                   (lockstep-template (rest lst1) (rest lst2)) ... )]))

;; Case 3: processing at different rates

;; twolist-template: (listof Any) (listof Any) -> (listof Any)
(define (twolist-template lst1 lst2)
  (cond [(and (empty? lst1) (empty? lst2)) ...]
        [(and (empty? lst1) (cons? lst2)) ...]
        [(and (cons? lst1) (empty? lst2)) ...]
        [(and (cons? lst1) (cons? lst2)) ???]))

;; where ??? can be:
;; (... (first lst1) (twolist-template (rest lst1) lst2))
;; (... (first lst2) (twolist-tempate lst1 (rest lst2)))
;; (... (first lst1) ... (first lst2) (twolist-template (rest lst1) (rest lst2)))

;; merge: (listof Num) (listof Num) -> (listof Num)
;;     Requires: lst1 and lst2 already sorted in ascending order
(define (merge lst1 lst2)
  (cond [(and (empty? lst1) (empty? lst2)) empty]
        [(and (empty? lst1) (cons? lst2)) lst2]
        [(and (cons? lst1) (empty? lst2)) lst1]
        [(< (first lst1) (first lst2)) (cons (first lst1) (merge (rest lst1) lst2))]
        [else (cons (first lst2) (merge lst1 (rest (lst2))))]))

;; (list=? lst1 lst2) determines if lst1 and lst2 are equal

;; list=?: (listof Any) (listof Any) -> Bool
(define (list=? lst1 lst2)
  (or (and (empty? lst1) (empty? lst2))
      (and (cons? lst1) (cons? lst2)
           (equal? (first lst1) (first lst2))
           (list=? (rest lst1) (rest lst2)))))