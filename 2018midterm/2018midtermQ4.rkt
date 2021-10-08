;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define low-skip-rate-boundary 100) ; boundary between low and medium skip rate
(define high-skip-rate-boundary 120) ; boundary between medium and high skip rate

(define low-skip-rate-METs 8.8) ; METs for low skip rate
(define medium-skip-rate-METs 11.8) ; METs for medium skip rate
(define high-skip-rate-METs 12.3) ; METs for high skip rate

(define hrs-to-min 60) ; number of minutes in an hour
(define kg-to-pounds 0.45359237) ; kilograms in a pound

;; (cals-burned-skipping mass skips-per-min duration) produces the amount of calories burned when
;;     skipping from the person's mass, skips-per-min, and duration that they skipped.

(define (cals-burned-skipping-friendly mass skips-per-min duration)
  (cals-burned-skipping (/ mass kg-to-pounds) skips-per-min (* duration hrs-to-min)))

(define (cals-burned-skipping mass skips-per-min duration)
  (cond [(< skips-per-min low-skip-rate-boundary) (* mass duration low-skip-rate-METs)]
        [(<= skips-per-min high-skip-rate-boundary) (* mass duration medium-skip-rate-METs)]
        [else (* mass duration high-skip-rate-METs)]))