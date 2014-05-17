#lang racket

(define divisible-under-20?
  (lambda (n)
    (letrec
        ((D (lambda (m)
              (cond
                ((zero? m) #t)
                ((zero? (remainder n m)) (D (sub1 m)))
                (else #f)))))
      (D 20))))

(filter divisible-under-20? (build-list 12000000 (lambda (n) (* n 20))))