#lang racket

(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))
(require "index.rkt")

(test-begin
  (check-equal? "read" (humanize-permission "r"))
  (check-equal? "write" (humanize-permission "w"))
  (check-equal? "execute" (humanize-permission "x"))
  )
