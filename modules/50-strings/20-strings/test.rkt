#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
 (check-equal? (next-chars "") "")

 (check-equal? (next-chars "abc") "bcd")

 (check-equal? (next-chars "123") "234")

 (check-equal? (next-chars (string #\0 #\100)) (string #\1 #\101)))
