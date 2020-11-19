#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal?
   (max-delta (list) (list))
   0)

  (check-equal?
   (max-delta
    (list -5)
    (list -15))
   10)

  (check-equal?
   (max-delta
    (list 0)
    (list 42))
   42)

  (check-equal?
   (max-delta
    (list 10 -15 35)
    (list 2 -12 42))
   8))
