#lang racket

(provide assert-output)

(require (only-in racket/system
                  system))

(define message-template #<<EOF
  --------------------
  FAILURE
  actual:     "~a"
  expected:   "~a"
  --------------------


EOF
)

(define (generate-message expected actual)
  (format message-template expected actual)
  )

(define (assert-output expected)
  (let* ([index-path (build-path (current-directory) "index.rkt")]
         [command (string-append "racket " (path->string index-path))]
         [out (with-output-to-string (lambda () (system command)))])
        (display out)
        (display "\n\n")
        (cond [(not (string=? out expected))
               (display (generate-message expected out))
               (exit 1)
               ])
        ))
