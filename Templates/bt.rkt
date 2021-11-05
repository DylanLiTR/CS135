;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname bt_template) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define-struct node (key left right))
;; A Node is a (make-node Nat BT BT)

;; A binary tree (BT) is one of:
;; * empty
;; * Node

;; bt-template: BT -> Any
(define (bt-template t)
  (cond [(empty? t) ...]
        [(node? t) (... (node-key t)
                        (bt-template (node-left t))
                        (bt-template (node-right t)))]))