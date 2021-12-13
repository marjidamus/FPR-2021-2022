#lang racket

(define (sum-digits-iter x)
  (define (helper result left-over)
  (if (< left-over 10 )
      result
      (helper (+ result (remainder left-over 10)) (quotient left-over 10))
      )
  )
  (if(< x 0)
     (error "X must be non-negative")
     (helper 1 x)
     )
  )

(= (sum-digits-iter 12345) 15)
(= (sum-digits-iter 123) 6)
; (sum-digits-iter -13) ; error "n was negative"