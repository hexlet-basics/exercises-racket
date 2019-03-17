#lang racket

(require (only-in racket/system
                  system))
(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? 27 (cube 3))
  (check-equal? 8 (cube 2))
  (check-equal? 1 (cube 1))
  )
