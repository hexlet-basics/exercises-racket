#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
 (displayln (add 0 0))
 (check-equal?
  (add 0 0)
  "+0
 0
 -
 0")

 (displayln "")
 (displayln (add 1 9))
 (check-equal?
  (add 1 9)
  "+ 1
  9
 --
 10")

 (displayln "")
 (displayln (add 999 99001))
 (check-equal?
  (add 999 99001)
  "+   999
  99001
 ------
 100000"))
