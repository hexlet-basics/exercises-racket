#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (same-parity? x y) (or (and (odd? x) (odd? y))
                               (and (even? x) (even? y))))
#| END |#
