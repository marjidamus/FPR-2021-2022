#lang racket

(require math/number-theory)
;1. What is the name of the procedure/function?
;2. How many parameters does it take?
;3. What is the type of the parameters?
;4. What are the names of the parameters?
;5. What is the return type?
;6. Break the task into smaller tasks. List them.

(define (max-multiple d b)
  (cond
    [(= b 1)1]
    [(divides? d b)b]
    [else (max-multiple d (sub1 b))])
  )

(= (max-multiple 2 7) 6)
(= (max-multiple 3 10) 9)
(= (max-multiple 7 17) 14)
(= (max-multiple 10 50) 50)
(= (max-multiple 37 200) 185)
(= (max-multiple 7 100) 98)