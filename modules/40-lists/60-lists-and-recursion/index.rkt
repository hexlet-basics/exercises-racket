#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (skip n l)
  (if (or (<= n 0) (empty? l)) l
      (skip (sub1 n) (rest l))))
#| END |#
