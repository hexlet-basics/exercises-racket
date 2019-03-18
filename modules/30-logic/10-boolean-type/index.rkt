#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (same-parity? x y) (or (and (= (remainder x 2) 0) (= (remainder y 2) 0))
                               (and (= (remainder x 2) 1) (= (remainder y 2) 1))
                               ))
#| END |#
