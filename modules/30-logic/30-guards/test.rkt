#lang racket

(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? (void) (say-boom "HOW?"))
  (check-equal? "Boom!" (say-boom "go")))
