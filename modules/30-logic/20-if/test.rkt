#lang racket

(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? "cry" (sentence-type "HOW?"))
  (check-equal? "common" (sentence-type "HoW?")))
