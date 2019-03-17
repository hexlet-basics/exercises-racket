#lang racket

(require (only-in racket/system
                  system))
(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? 13 (sum-of-squares 2 3))
  (check-equal? 61 (sum-of-squares 6 5))
  )
