#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (square-of-sum 2 3) 25)
  (check-equal? (square-of-sum 5 8) 169))
