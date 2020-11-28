#lang racket

(require (only-in rackunit check-equal? test-begin ))
(require "index.rkt")

(test-begin
  (check-equal? (sentence-type "HOW?") "cry")
  (check-equal? (sentence-type "HoW?") "common"))
