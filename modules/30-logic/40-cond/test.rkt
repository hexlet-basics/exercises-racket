#lang racket

(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? "junior" (programmer-level 3))
  (check-equal? "middle" (programmer-level 18))
  (check-equal? "senior" (programmer-level 40))
  )
