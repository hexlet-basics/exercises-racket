#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (programmer-level points-count)
 (cond
    [(< points-count 10) "junior"]
    [(and (> points-count 10) (< points-count 20)) "middle"]
    [else "senior"]))
#| END |#
