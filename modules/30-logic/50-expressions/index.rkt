#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (do-today day-of-week)
  (cond
    [(and (integer? day-of-week)
          (<= 1 day-of-week 7))
     (case day-of-week
       [(6 7) "rest"]
       [else "work"])]
    [else "???"]))
#| END |#
