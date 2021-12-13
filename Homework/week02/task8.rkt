#lang racket

(require math/number-theory)

(define (sum-dig n)
    (cond
      [(< n 10)n]
      [(+ (remainder n 10)(sum-dig (quotient n 10)))]
      )
  )
(define (interesting? n)
  (divides? (sum-dig n) n)
      )
 
(equal? (interesting? 410) #t)