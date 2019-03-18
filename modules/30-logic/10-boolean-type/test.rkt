#lang racket

(require (only-in rackunit
                  check-true
                  check-false
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-true (same-parity? 3 7))
  (check-true (same-parity? 4 8))
  (check-false (same-parity? 4 7))
  (check-false (same-parity? 3 10))
  )
