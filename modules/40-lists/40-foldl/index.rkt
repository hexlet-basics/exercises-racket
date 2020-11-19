#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (max-delta xs ys)
  (foldl (lambda [x y m] (max m (abs (- x y))))
         0 xs ys))
#| END |#
