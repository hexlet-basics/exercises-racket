#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (increment-numbers xs)
  (map add1 (filter number? xs)))
#| END |#
