#lang racket

(require (only-in racket/system
                  system))
(require (only-in rackunit
                  check-equal?
                  test-begin
                  ))

(test-begin
  (let ([out (with-output-to-string (lambda () (system "racket index.rkt")))])
    (display out)
    (display "\n\n\n")
    (check-equal? out "100")))
