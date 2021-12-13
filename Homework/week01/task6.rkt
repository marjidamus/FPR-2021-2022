#lang racket

(define (rev x)
        (define (helper result left-over)
             (if (zero? left-over)
                 result
                 (helper(+ (* result 10)(remainder left-over 10))(quotient left-over 10) )
             )
          )
          (if (< x 0)
              (error "The number must be non-negative")
              (helper (remainder x 10) (quotient x 10))
          ) 
          
        )


(= (rev 1) 1)
(= (rev 123) 321)
(= (rev 987654321) 123456789)