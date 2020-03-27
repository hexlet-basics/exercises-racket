#lang racket
(require racket/enter)

(provide assert-output)

(define message-template #<<EOF
  --------------------
  FAILURE
  actual:     "~a"
  expected:   "~a"
  --------------------
EOF
)

(define (assert-output expected)
  (let* ([index-path (build-path (current-directory) "index.rkt")]
         [actual (string-trim
                  (with-output-to-string
                    (lambda () (dynamic-enter! index-path))))])
    (displayln actual)
    (cond [(not (string=? actual expected))
           (displayln (format message-template actual expected))
           (exit 1)])))
