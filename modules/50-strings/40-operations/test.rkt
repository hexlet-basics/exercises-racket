#lang racket

(require (only-in rackunit check-equal? test-begin))
(require "index.rkt")

(test-begin
 (check-equal? (scroll-left "") "")

 (check-equal? (scroll-left "a") "a")

 (check-equal? (scroll-left "abc") "bca")

 (check-equal? (scroll-left
                (scroll-left
                 (scroll-left "abc"))) "abc"))
