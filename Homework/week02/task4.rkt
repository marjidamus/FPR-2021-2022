#lang racket

(define (rev n)
    (define(helper result left-over)
     (if (zero? left-over)
        result
        (helper(+ (* result 10) (remainder left-over 10))(quotient left-over 10))
        )
      )
  (if (< n 0)
      (error "n must be postive")
      (helper 0 n)
      )
    )

(define (palindrome? n)
  (= n (rev n))
  )

(define (num-palindromes-iter a b )
  (define (helper current-n counter )
    (cond
      [(> current-n b)counter]
      [(palindrome? current-n)(helper (add1 current-n)(add1 counter))]
      [else(helper (add1 current-n) counter )]
      )
    )
  (if(> a b)
     (num-palindromes-iter  b a )
     (helper a 0))

  )

(define (num-palindromes-rec a b)
  (define (helper current-n)
    (cond
      [(> current-n b)0]
      [(palindrome? current-n)(add1 (helper (add1 current-n)))]
      [else (helper (add1 current-n))]
      )
    )
  (if(> a b)
     (num-palindromes-rec b a)
     (helper a))
  )

(= (num-palindromes-rec 1 101) 19)
(= (num-palindromes-rec 1 100) 18)
(= (num-palindromes-rec 100 1) 18)

(= (num-palindromes-iter 1 101) 19)
(= (num-palindromes-iter 1 100) 18)
(= (num-palindromes-iter 100 1) 18)