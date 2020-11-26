#lang racket

(provide scroll-left)

#| BEGIN |#
(define (scroll-left s)
  (if (zero? (string-length s)) s
      (string-append (substring s 1)
                     (substring s 0 1))))
#| END |#
