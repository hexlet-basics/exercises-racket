#lang racket

(provide add)

#| BEGIN |#
(define (add x y)
  (let* ([result (~a (+ x y))]
         [width (string-length result)])
    (format
     "+~a~n ~a~n ~a~n ~a"
     (~a x #:min-width width #:align 'right)
     (~a y #:min-width width #:align 'right)
     (make-string width #\-)
     result)))
#| END |#
