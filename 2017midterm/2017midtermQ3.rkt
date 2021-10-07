;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2018midtermQ3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define bottom-left (make-posn -1 -2)) ; coordinates of the bottom-left corner of the box
(define width 6.5) ; width of the box
(define height 11) ; height of the box

;; (point-location box-x box-y width height x y) determines the position of point (x,y) with respect
;; to a box defined by with the lower-left corner at (box-x, box-y) with the given width and height.

;; Examples:
(check-expect (point-location 0 0 10 10 5 5) 'inside)
(check-expect (point-location 0 0 10 10 -1 -1) 'outside)
(check-expect (point-location 0 0 10 10 10 3) 'boundary)

;; point-location: Num Num Num Num Num Num → (anyof ’inside ’outside ’boundary)
;; requires: width, height > 0
(define (point-location box-x box-y width height x y)
  (cond [(or (and (= x box-x) (>= y box-y) (<= y (+ box-y height)))
             (and (= x (+ box-x width)) (>= y box-y) (<= y (+ box-y height)))
             (and (= y box-y) (>= x box-x) (<= x (+ box-x width)))
             (and (= y (+ box-y height)) (>= x box-x) (<= x (+ box-x width))))
             'boundary]
        [(and (> x box-x) (< x (+ box-x width)) (> y box-y) (< y (+ box-y height))) 'inside]
        [else 'outside]))

;; Tests:
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 2 7) 'inside)

;;     Outside of every side
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 6 7) 'outside)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 3 10) 'outside)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height -3 1) 'outside)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 3 -14) 'outside)

;;     Boundary cases
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height -1 3) 'boundary)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 3 9) 'boundary)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height 2 -2) 'boundary)
(check-expect
 (point-location (posn-x bottom-left) (posn-x bottom-left) width height 5.5 4) 'boundary)

;;     Corners
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height -1 -2) 'boundary)
(check-expect (point-location (posn-x bottom-left) (posn-y bottom-left) width height -1 9) 'boundary)
(check-expect
 (point-location (posn-x bottom-left) (posn-y bottom-left) width height 5.5 -2) 'boundary)
(check-expect
 (point-location (posn-x bottom-left) (posn-x bottom-left) width height 5.5 9) 'boundary)