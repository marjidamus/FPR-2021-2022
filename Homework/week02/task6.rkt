#lang racket

(require math/number-theory)
(require racket/trace)

(define (contains-d? x d)
  (define (helper current-x)
    (cond
      [(zero? current-x)#f]
      [(= (remainder current-x 10) d)#t]
      [else (helper (quotient current-x 10))]
      )
    )
  (helper x)
  )

(define (sum-special-primes n d)
  (define (helper current-x current-n sum)
    (cond
      [(= current-n n) sum]
      [(and (prime? current-x)(contains-d? current-x d))(helper(add1 current-x)(add1 current-n)(+ sum current-x))]
      [else (helper (add1 current-x) current-n sum)]
      )
    )

  (helper 2 0 0)


  )
(sum-special-primes 5 2)

(= (sum-special-primes 5 2) 392)
(= (sum-special-primes 5 3) 107)
(= (sum-special-primes 10 3) 462)