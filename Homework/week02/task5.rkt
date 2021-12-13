#lang racket

(require math/number-theory)

(define (sum-num-div n)
  (define (helper sum current-n)
    (cond
      [(> current-n n)sum]
      [(divides? current-n n)(helper(+ current-n sum)(add1 current-n))]
      [else(helper  sum (add1 current-n))]
      )
    )
      (helper 0 1)
      )
  


(define (amicable? x y)
  (= (sum-num-div x)(sum-num-div y))
  )


(equal? (amicable? 200 300) #f)
(equal? (amicable? 220 284) #t)
(equal? (amicable? 284 220) #t)
(equal? (amicable? 1184 1210) #t)
(equal? (amicable? 2620 2924) #t)
(equal? (amicable? 6232 6368) #t)