#lang racket

(define (count-digits-iter x )
  (define (helper result left-over)
  (if (< left-over 10)
      result
      (helper (+ 1 result) (quotient left-over 10))
      )
    )
  (if (< x 0)
      (error "X must be non-negative")
      (helper 1 x)
      )
  )

(define (count-digits-rec x  )
  (cond
    [(< x 0 ) (error "X must be non-negative")]
    [(< x 10 )1]
    [else (+ 1 (count-digits-rec (quotient x 10)))]
    )
  )

(= (count-digits-iter 12345) 5)
(= (count-digits-iter 123) 3)

(= (count-digits-rec 12345) 5)
(= (count-digits-rec 123) 3)
(count-digits-iter -13) ; error "n was negative"