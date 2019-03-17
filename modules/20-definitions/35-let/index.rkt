#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (square-of-sum x y)
  (let ([sum (+ x y)])
    (* sum sum)))
#| END |#
