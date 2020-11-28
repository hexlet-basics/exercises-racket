#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (do-today 1) "work")
  (check-equal? (do-today 2) "work")
  (check-equal? (do-today 3) "work")
  (check-equal? (do-today 4) "work")
  (check-equal? (do-today 5) "work")
  (check-equal? (do-today 6) "rest")
  (check-equal? (do-today 7) "rest")
  (check-equal? (do-today 0) "???")
  (check-equal? (do-today -1) "???")
  (check-equal? (do-today 10) "???")
  (check-equal? (do-today #f) "???")
  (check-equal? (do-today "oops") "???"))
