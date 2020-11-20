#lang racket

(provide (all-defined-out))

#| BEGIN |#
(define (lookup key pairs)
  (let* ([same-key? (lambda (kv) (equal? key (car kv)))]
         [found-pairs (filter same-key? pairs)])
    (if (empty? found-pairs) #f
        (first found-pairs))))
#| END |#
