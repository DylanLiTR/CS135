;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define day-trip 24) ; boundary duration of one day
(define two-day-trip 48) ; boundary duration of two days

;; (pay-duty? duration goods alcohol? profession) produces true if the traveller needs to pay
;;     any amount of duty when returning to Canada, given the duration of the trip in hours,
;;     the amount of goods purchased in dollars, whether the goods includes any alcohol,
;;     and the profession of the traveller. It produces false otherwise.

;; Examples:
(check-expect (pay-duty? 2 300 false 'chef) true)

;; pay-duty?: Nat Num Bool Sym → Bool
;;     Requires: goods ≥ 0 and must be > 0 if alcohol? is true
;; part a)
(define (pay-duty? duration goods alcohol? profession)
  (cond [(symbol=? profession 'ambassador) false]
        [(symbol=? profession 'diplomat) false]
        [(< duration day-trip) true]
        [(< duration two-day-trip)
         (cond [(> goods 200) true]
               [alcohol? true]
               [else false])]
        [(> goods 800) true]
        [else false]))

;; part b)
(define (pay-duty? duration goods alcohol? profession)
  (and (not (or (symbol=? profession 'ambassador) (symbol=? profession 'diplomat)))
       (or (< duration day-trip)
           (and (< duration two-day-trip) (or (> goods 200) alcohol?))
           (> goods 800))))

;; Tests:
;;     Ambassador or dimplomat
(check-expect (pay-duty? 1 1500 true 'ambassador) false)
(check-expect (pay-duty? 830 24360 false 'diplomat) false)

;;     Boundary
(check-expect (pay-duty? 24 80 false 'lawyer) false)
(check-expect (pay-duty? 48 500 true 'teacher) false)

;;     True cases for all cases
(check-expect (pay-duty? 7 29 false 'engineer) true)
(check-expect (pay-duty? 35 300 false 'trainer) true)
(check-expect (pay-duty? 35 40 true 'businessman) true)
(check-expect (pay-duty? 90 2000 false 'student) true)