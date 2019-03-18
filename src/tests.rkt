#lang racket

(provide assert-output)

(define message-template #<<EOF
  --------------------
  FAILURE
  actual:     "~a"
  expected:   "~a"
  --------------------
EOF
)

(define (load-solution path)
  (parameterize ([current-namespace (make-base-namespace)])
    (load path)))

(define (generate-message expected actual)
  (format message-template expected actual))

(define (assert-output expected)
  (let* ([index-path (build-path (current-directory) "index.rkt")]
          [out (string-trim (with-output-to-string (lambda () (load-solution index-path))))])
    (displayln out)
    (cond [(not (string=? out expected))
           (displayln (generate-message expected out))
           (exit 1)])))
