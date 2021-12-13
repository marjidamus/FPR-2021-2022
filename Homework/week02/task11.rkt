#lang racket

;1. What is the name of the procedure/function?
;2. How many parameters does it take?
;3. What is the type of the parameters?
;4. What are the names of the parameters?
;5. What is the return type?
;6. Break the task into smaller tasks. List them.
(require racket/trace)
(require math/number-theory)
(define (nth-cubic n)
  (define (helper current-n counter)
    (cond
      [(>= counter n)(- (expt (sub1 current-n) 3) (expt (- current-n 2) 3))]
      [(prime? (- (expt current-n 3) (expt (sub1 current-n) 3)))(helper(add1 current-n)(add1 counter))]
      [else (helper (add1 current-n) counter)]
      )
    )
  ;(trace helper)
  (if(<= n 0)
     (error "N should be natural")
     (helper 2 0))
  
  )


(= (nth-cubic 1) 7)
(= (nth-cubic 4) 61) ; 61 is the 4th cubic prime number
(= (nth-cubic 50) 55897) ; 55897 is the 50th cubic prime number
(= (nth-cubic 100) 283669)
(= (nth-cubic 200) 1570357)
(nth-cubic 0) ; should return an error