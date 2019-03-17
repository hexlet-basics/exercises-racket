#lang racket

(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? 25 (square-of-sum 2 3))
  (check-equal? 169 (square-of-sum 5 8))
  )
