#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? '(0 0 0) (triple 0))
  (check-equal? '("a" "a" "a") (triple "a"))
  (check-equal? '((0 0 0)
                  (0 0 0)
                  (0 0 0))
                (triple (triple 0))))
