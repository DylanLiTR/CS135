;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname design_recipe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;;                                      Design Recipe Template
;; ---------------------------------------------------------------------------------------------------

;; 1. Custom Structures
;; 2. Data Definitions
;; 3. Constants
;; 4. Functions
;; 5. Helper/Accessor Functions

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
;;         Any, Str, Char, Sym, Num, Int, Nat, Bool, (listof X), (ne-listof X),
;;         AL / (listof (list Nat Str)), (anyof ...), (list ...), custom structure
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

;; Note: helper functions only require a purpose, a contract, and at least one illustrative example

;; ---------------------------------------------------------------------------------------------------

(define-struct STRUCT1 (field1 field2))
;; a STRUCT1 is a (make-STRUCT1 Any Any)
;;     Requires: ...

(define-struct STRUCT2 (field1 field2))
;; a STRUCT2 is a (make-STRUCT2 Any Any)
;;     Requires: ...

;; A DATA is one of:
;; * STRUCT1
;; * STRUCT2

(define CONSTANT VALUE) ; ...

;; (FUNCTION arg1 arg2) produces ...

;; Examples
(check-expect (FUNCTION input1 input2) output)

;; FUNCTION: Any Any -> Any
;;     Requires: ...
(define (FUNCTION arg1 arg2)
  )

;; Tests
(check-expect (FUNCTION input1 input2) output)