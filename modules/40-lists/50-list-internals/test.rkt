#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
  (check-equal? (lookup "foo" null) #f)

  (check-equal?
   (lookup "foo" (list (cons "foo" "bar")))
   (cons "foo" "bar"))

  (check-equal?
   (lookup "foo" (list (cons "bar" "foo")))
   #f)

  (check-equal?
   (lookup 42 (list (cons 42 0)
                    (cons 30 0)
                    (cons 42 100500)))
   (cons 42 0)))
