;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define-struct STRUCT1 (field1 field2))
;; a STRUCT1 is a (make-STRUCT1 Any Any)

(define-struct STRUCT2 (field1 field2))
;; a STRUCT2 is a (make-STRUCT2 Any Any)

;; A DATA is one of:
;; * STRUCT1
;; * STRUCT2

;; STRUCT-template: STRUCT1 -> Any
(define (STRUCT-template struct-example)
  ( ... (STRUCT1-field1 struct-example)
    ... (STRUCT1-field2 struct-example) ... ))

;; DATA-template: DATA -> Any
(define (DATA-template struct-example)
  (cond [(STRUCT1? struct-example) ( ... (STRUCT-field1 struct-example)
                                     ... (STRUCT-field2 struct-example) ... )]
        [(STRUCT2? struct-example) ( ... (STRUCT-field1 struct-example)
                                     ... (STRUCT-field2 struct-example) ... )]))