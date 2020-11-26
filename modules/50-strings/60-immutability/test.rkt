#lang racket

(require (only-in rackunit check-equal? check-pred test-begin))
(require "index.rkt")

(test-begin
 (check-pred
  void?
  (scroll-left! (string))
  "Function should not return anything!")

 (check-pred
  void?
  (scroll-left! (make-string 3 #\a))
  "Function should not return anything!")

 (check-equal?
  (let ([s (string-copy "")])
    (scroll-left! s)
    s)
  "")

 (check-equal?
  (let ([s (string-copy "!")])
    (scroll-left! s)
    s)
  "!")

 (check-equal?
  (let ([s (string-copy "abc")])
    (scroll-left! s)
    s)
  "bca"))
