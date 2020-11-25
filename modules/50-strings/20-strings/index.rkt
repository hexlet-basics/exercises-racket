#lang racket

(provide next-chars)

#| BEGIN |#
(define (next-char c) (integer->char (add1 (char->integer c))))

(define (next-chars s)
  (list->string (map next-char (string->list s))))
#| END |#
