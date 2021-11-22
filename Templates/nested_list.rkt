;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname nested_list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; nested-list-template: (nested-listof X) -> Any
(define (nested-list-template lst)
  (cond [(empty? lst) ...]
        [(list? (first lst)) (... (nested-list-templated (first lst)) ...
                                  (nested-list-tempalte (rest lst)) ...)]
        [else (... (first lst) ...
                   (nested-list-template (rest lst)) ...)]))