#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (humanize-permission v)
 (case v
    [("x") "execute"]
    [("w") "write"]
    [("r") "read"]))
#| END |#
