#lang racket

(define (snail columnHeight dayDistance nightDistance)
  (cond
    [(< dayDistance nightDistance) (error "The nightDistance cannot be bigger than the dayDistance")]
    [(<= columnHeight dayDistance) 1]
    [(= (- dayDistance nightDistance) 1) (- columnHeight nightDistance)]
    [else (round (/ columnHeight (- dayDistance nightDistance)))]
    )

  )

(= (snail 3 2 1) 2)
(= (snail 10 3 1) 5)
(= (snail 10 3 2) 8)
(= (snail 100 20 5) 7)
(= (snail 5 10 3) 1)