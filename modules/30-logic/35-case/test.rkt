#lang racket

(require (only-in rackunit check-equal? test-begin ))
(require "index.rkt")

(test-begin
  (check-equal? (humanize-permission "r") "read")
  (check-equal? (humanize-permission "w") "write")
  (check-equal? (humanize-permission "x") "execute"))
