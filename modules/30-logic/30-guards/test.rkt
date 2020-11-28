#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (say-boom "HOW?") (void))
  (check-equal? (say-boom "go") "Boom!"))
