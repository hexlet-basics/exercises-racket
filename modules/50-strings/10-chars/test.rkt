#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
 (check-equal? (next-char #\0) #\1)

 (check-equal? (prev-char #\1) #\0)

 (check-equal?
  (prev-char (next-char #\a))
  (next-char (prev-char #\a))))
