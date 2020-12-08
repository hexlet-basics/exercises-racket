#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (cube 3) 27)
  (check-equal? (cube 2) 8)
  (check-equal? (cube 1) 1))
