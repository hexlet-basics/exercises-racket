#lang racket

(require (only-in racket/system
                  system))
(require (only-in rackunit
                  check-equal?
                  ))

(let ([out (with-output-to-string (lambda () (system "racket index.rkt")))])
  (display out)
  (check-equal? out "91"))
