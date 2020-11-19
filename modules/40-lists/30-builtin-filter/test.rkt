#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal?
   (increment-numbers (list))
   (list))

  (check-equal?
   (increment-numbers (list "a" "b" #f))
   (list))

  (check-equal?
   (increment-numbers (list 1/2))
   (list 3/2))

  (check-equal?
   (increment-numbers (list 1 1/2 "foo"))
   (list 2 3/2)))
