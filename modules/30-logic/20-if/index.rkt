#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (sentence-type text) (if (equal? (string-upcase text) text)
                               "cry"
                               "common"))
#| END |#
