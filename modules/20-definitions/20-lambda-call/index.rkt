#lang racket/base

#| BEGIN |#
(define result ((lambda (num1 num2) (/ (+ num1 num2) 2))
                2 4))
(display result)
#| END |#
