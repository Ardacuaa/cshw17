#lang racket
(require "utility17.rkt")
(require "runner17.rkt")
(require "parcer17.rkt")
(require "variable_env.rkt")

(define env '((global (a 1) (b 2) (c 5))))

(define sample-code '(block (assign i 0)
                            (while (bool < i 10)
                                   (block (assign a (math + i 1))
                                          (assign i a)
                                          (print i))
                            )))
;(displayln (neo-parser sample-code))
(define parsed-neo-code (neo-parser sample-code))
(run-neo-parsed-code parsed-neo-code env)

