#lang racket

(define integer-to-list
  (lambda (n)
    (cond
      ((> 10 n) (cons n '()))
      (else (cons (remainder n 10) (integer-to-list (quotient n 10)))))))

(define power-of-five
  (lambda (n)
    (expt n 5)))

(for/sum ([i (in-range 2 350000)]
           #:when (eq? i (apply + (map power-of-five (integer-to-list i))))) i)