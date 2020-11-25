#lang racket

(provide
 password-valid?
 password-good?)

#| BEGIN |#
(define (char-alphanumeric? c)
  (or (char-alphabetic? c)
      (char-numeric? c)))

(define (password-valid? password)
  (and
   (positive? (string-length password))
   (andmap char-alphanumeric? (string->list password))))

(define (password-good? password)
  (let ([chars (string->list password)])
    (and
     (password-valid? password)
     (<= 8 (length chars))
     (ormap char-alphabetic? chars)
     (ormap char-numeric? chars))))
#| END |#
