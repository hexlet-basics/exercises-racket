#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? "work" (do-today 1))
  (check-equal? "work" (do-today 2))
  (check-equal? "work" (do-today 3))
  (check-equal? "work" (do-today 4))
  (check-equal? "work" (do-today 5))
  (check-equal? "rest" (do-today 6))
  (check-equal? "rest" (do-today 7))
  (check-equal? "???" (do-today 0))
  (check-equal? "???" (do-today -1))
  (check-equal? "???" (do-today 10))
  (check-equal? "???" (do-today #f))
  (check-equal? "???" (do-today "oops")))
