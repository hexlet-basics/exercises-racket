#lang racket

(require (only-in rackunit check-equal? test-begin ))
(require "index.rkt")

(test-begin
  (check-equal? (programmer-level 3) "junior")
  (check-equal? (programmer-level 18) "middle")
  (check-equal? (programmer-level 40) "senior"))
