#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (sum-of-squares 2 3) 13)
  (check-equal? (sum-of-squares 6 5) 61))
