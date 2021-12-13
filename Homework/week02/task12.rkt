#lang racket


;1. What is the name of the procedure/function?
;2. How many parameters does it take?
;3. What is the type of the parameters?
;4. What are the names of the parameters?
;5. What is the return type?
;6. Break the task into smaller tasks. List them.
(require racket/trace)
(define (find-sum a b n)
  (define (helper counter sum prev-num)
    (cond
      [(>= counter (sub1 n))sum]
      [(<= (- n 4) counter (sub1 n))(helper(add1 counter)(+ sum (+ prev-num (* (expt 2 (add1 counter)) b)))(+ prev-num (* (expt 2 (add1 counter)) b)))]
      [else (helper (add1 counter) sum (+ prev-num (* (expt 2 (add1 counter)) b)))]
      )
    )
  (trace helper)
  (helper 0 0 (+ a b))
  )
(find-sum 0 2 10)
(= (find-sum 0 2 10) 3578) ; 510 + 1022 + 2046
(= (find-sum 5 3 5) 174) ; 26 + 50 + 98