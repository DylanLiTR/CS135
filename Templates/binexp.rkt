;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname binexp) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; A binary arithmetic expresion (BinExp) is one of:
;; * a Num
;; * a BINode

(define-struct binode (op left right))
;; A Binary arithmetic expression Internal Node (BINode) is a
;;     (make-binode (anyof '* '+ '/ '- BinExp BinExp)

;; binexp-template: BinExp -> Any
(define (binexp-template ex)
  (cond [(number? ex) (... ex)]
        [(binode? ex) (binode-template ex)]))

;; binode-template: BINode -> Any
(define (binode-template node)
  (... (binode-op node)
       (binexp-template (binode-left node))
       (binexp-template (binode-right node))))