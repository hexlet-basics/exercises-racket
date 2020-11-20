#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (skip -5 (list 1 2 3)) (list 1 2 3))

  (check-equal? (skip 0 (list 1 2 3)) (list 1 2 3))

  (check-equal? (skip 1 (list 1 2 3)) (list 2 3))

  (check-equal? (skip 10 (list 1 2 3)) null))
