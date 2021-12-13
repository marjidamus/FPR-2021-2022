#lang racket

(require math/number-theory)

(define (sum-prime-divs-rec n )
  (define (helper current-n )
  (cond
    [(zero? n) 0]
    [(and (prime? current-n) (divides? current-n n))(+ current-n (helper (add1 current-n)))]
    [else (helper(add1 current-n)) ]
    )
   )
  (helper 2)
 )
(= (sum-prime-divs-rec 0) 0)
(= (sum-prime-divs-rec 6) 5) ; 2 + 3
(= (sum-prime-divs-rec 18) 5) ; 2 + 3
(= (sum-prime-divs-rec 19) 19)
(= (sum-prime-divs-rec 45136) 53)