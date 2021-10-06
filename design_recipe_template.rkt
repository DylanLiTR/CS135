;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Design Recipe Template|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;                                      Design Recipe Template
;; ---------------------------------------------------------------------------------------------------

;; Purpose
;;     Function header
;;     What does the function output?
;;     What does the function take as input?
;;         Include all argument names

;; Examples
;;     check-expect or check-within
;;     Basic examples

;; Contract
;;     Function name:
;;     Types of inputs -> type of output
;;         Any, Str, Char, Sym, Num, Int, Nat, Bool, (listof X), (ne-listof X)
;;     Requires:
;;         Name of the variable and condition to be met
;;             > < = <= >=

;; Function Header

;; Function Body

;; Tests
;;     check-expect or check-within
;;     Thorough tests
;;         Every output (no black highlighting)
;;         0, small/large values, boundaries, true, false, empty string/list, length 1, length > 1,
;;             extra whitespace, character types
;;         Every combination of inputs for every output

;; Note:
;;     Helper functions only require a purpose, a contract, and at least one illustrative example

;; ---------------------------------------------------------------------------------------------------

;; (function var1 var2) produces ...

;; Examples:
(check-expect (function input1 input2) output)

;; function: Any Any -> Any
;;     Requires: ...
(define (function var1 var2)
  )

;; Tests:
(check-expect (function input1 input2) output)