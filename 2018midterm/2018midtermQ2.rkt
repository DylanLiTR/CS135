;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define favourite-artist "Metallica") ; artist whose concert I will always attend

(define many-friends 5) ; boundary for spending whole budget
(define few-friends 1) ; boundary for spending half budget

(define half-budget 0.5) ; budget multiplier if fewer than 5 friends join
(define solo-budget 0.2) ; budget multiplier if no friends join on a final tour

;; attend-concert?: Str Bool Nat Num Num -> Bool
(define (attend-concert? artist final-tour? friends-going ticket-price budget)
  (or (string=? artist favourite-artist)
      (and (>= friends-going many-friends)
           (<= ticket-price budget))
      (and (>= friends-going few-friends)
           (<= ticket-price (* budget half-budget)))
      (and final-tour? (<= ticket-price (* budget solo-budget)))))

(define (attend-concert? artist final-tour? friends-going ticket-price budget)
  (cond [(string=? artist favourite-artist) true]
        [(>= friends-going many-friends) (cond [(<= ticket-price budget) true]
                                               [else false])]
        [(>= friends-going few-friends) (cond [(<= ticket-price (* budget half-budget)) true]
                                              [else false])]
        [final-tour? (cond [(<= ticket-price (* budget solo-budget)) true]
                                              [else false])]
        [else false]))

;; Examples:
(check-expect
 (attend-concert? "Drake" false 7 120.00 100.00) false)
(check-expect
 (attend-concert? "Cher" true 0 8.00 100.00) true)