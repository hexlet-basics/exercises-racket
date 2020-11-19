#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal?
   (maps
    (list)
    (list))
   (list))

  (check-equal?
   (maps (list add1)
         (list (list 0)))
   (list (list 1)))

  (check-equal?
   (maps
    (list add1 string?)
    (list (list 0 100)
          (list "foo" 42)))
   (list (list 1 101)
         (list #t #f))))
