#lang racket
;1. What is the name of the procedure/function?
;2. How many parameters does it take?
;3. What is the type of the parameters?
;4. What are the names of the parameters?
;5. What is the return type?
;6. Break the task into smaller tasks. List them.
;6.1 squaring n
;6.2 take last count-digits n from 6.1
;6.3 check whether they match with n


(define (count-digits x)
  (if (< x 10)
      1
      (add1 (count-digits (quotient x 10)))
      )
  )
(define(automorphic? n)
  (if (<= n 0 )
      (error "N was not natural")
      (=  (remainder (* n n)(expt 10 (count-digits n))) n))
  
  )


#|25->625
count-digits->2
10^2=100
(remainder 625 100)
|#

(equal? (automorphic? 3)#f)
(equal? (automorphic? 10)#f)
(equal? (automorphic? 5)#t)
(equal? (automorphic? 25)#t)
(equal? (automorphic? 76)#t) 
(equal? (automorphic? 890625)#t) 
(equal? (automorphic? 625)#t) 
(equal? (automorphic? 36) #f)
(equal? (automorphic? 11) #f)
(automorphic? -1) ; error: n was not natural
(automorphic? 0) ; error: n was not natural