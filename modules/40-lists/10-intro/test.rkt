#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal?
   (triple 0)
   (list 0 0 0))

  (check-equal?
   (triple "a")
   (list "a" "a" "a"))

  (check-equal?
   (triple (triple 0))
   (list (list 0 0 0)
         (list 0 0 0)
         (list 0 0 0))))
