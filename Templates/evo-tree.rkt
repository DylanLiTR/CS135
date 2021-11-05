;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname evo-tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;; Distinguish between a node and a leaf

;; An EvoTree (Evolutionary Tree) is one of:
;; * a Current (current species)
;; * an Ancestor (common ancestor species)

(define-struct current (name endangered))
;; A Current is a (make-current Str Bool))
(define-struct ancestor (name age left right))
;; An Ancestor is a (make-ancestor Str Num EvoTree EvoTree)

(define (evotree-template t)
  (cond [(current? t) (... (current-name t)
                           (current-endangered t) ...)]
        [(ancestor? t) (... (ancestor-name t)
                            (ancestor-age t)
                            (evotree-template (ancestor-left t))
                            (evotrr-template (ancestor-right t)))]))