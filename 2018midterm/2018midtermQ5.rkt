;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define (blah a b c d e)
  (cond
    [(symbol=? a b)
     (cond [(> 3 d) (string-append "hot " e)]
           [(< 3 d) "lentils"])]
    [c (string-append "sour " e)]
    [(= d (string-length e)) (string-append "yummy " e)]
    [(or (= d 3) (not c)) "chilly"]
    [(symbol=? b 'carrot) (string-append "orange " e)]
    [d "radish"]))

;; a) (blah 'a 'a false 2 "goose")

;; b) (blah 'a 'b false 4 "tree")

;; c) (blah 'a 'b true 0 "phone")

;; d) (blah 'a 'b false 3 "hi")

;; e) (blah 5 'b false 0 "error")

;; f) (blah 'a 'a false 3 "bruh")

;; g) (blah 'a 'b 0 3 "radish?")

;; h) 9, 10

;; i)
;; blah: Sym Sym Bool Num Str -> Str
;;     Requires: a != b or d != 3