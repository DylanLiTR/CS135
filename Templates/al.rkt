;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname al) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;; An AL (association list) is a (listof (list Nat Str)) 
;;     Requires: each key (Nat) is unique

(define (key kv) (first kv)) ; accessor function for key of AL
(define (val kv) (second kv)) ; accessor function for value of AL

;; al-template: AL -> Any
(define (al-template alst)
  (cond [(empty? alst) ...]
        [else (... (key (first alst)) ...
                   (val (first alst)) ...
                   (al-template (rest alst)))]))

;; (lookup-al k alst) produces the value corresponding to the key k, or false if k is not present

;; lookup-al: Num AL -> (anyof Str false)
(define (lookup-al k alst)
  (cond [(empty? alst) false]
        [(= k (key (first alst))) (val (first alst))]
        [else (lookup-al k (rest alst))]))