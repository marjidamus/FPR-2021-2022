#lang racket

(require math/number-theory)

(define (count-occurences num d)
  (define (helper count left-over)
    (cond
      [(= left-over 0)count]
      [(= (remainder left-over 10) d)(helper (add1 count) (quotient left-over 10))]
      [else (helper count (quotient left-over 10))]
      )
    )
  (if (not (positive? num))
      (error "Negative number!")
      (helper 0 num)
      )
  )

(= (count-occurences 121 1) 2)
(count-occurences -121 1) ; error "Negative number!"