;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname nelox_template) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
;; A (ne-listof X) is one of:
;; * (cons X empty)
;; * (cons X (ne-listof X))

;; (ne-listof-X-template nelox) PURPOSE
;; Examples:
(check-expect (ne-listof-X-templatee (cons X empty)) ANSWER)
(check-expect (ne-listof-X-template (cons X (cons Y empty))) ANSWER)

;; ne-listof-X-template: (ne-listof X) -> Any
(define (ne-listof-X-template nelox)
   (cond
       [(empty? (rest nelox)) (... (first nelox) ... )]
       [(cons? nelox) (... (first nelox) ...
                  (nelist-template (rest nelox)) ... )]))

;; Tests
