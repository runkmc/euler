#lang racket

(define fibs
  (lambda (n)
    (letrec
        ((F (lambda (lat)
              (cond
                ((> (car lat) n) (cdr lat))
                (else (F (cons (+ (first lat) (second lat)) lat)))))))
      (F '(1 1)))))

(for/sum ([i (fibs 4000000)] #:when (even? i)) i)