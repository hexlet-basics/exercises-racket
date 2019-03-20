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

(define (assert-output expected)
  (let* ([index-path (build-path (current-directory) "index.rkt")]
         [actual (string-trim (with-output-to-string (lambda () (load-solution index-path))))])
    (displayln actual)
    (cond [(not (string=? actual expected))
           (displayln (format message-template actual expected))
           (exit 1)])))
