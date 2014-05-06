#lang racket

(define even-fib-sums-under
  (lambda (n)
    (letrec
        ((F (lambda (lat)
              (cond
                ((> (car lat) n) (cdr lat))
                (else (F (cons (+ (car lat) (car (cdr lat))) lat))))))
         (evens (lambda (lat)
                  (cond
                    ((null? lat) '())
                    ((even? (car lat)) (cons (car lat) (evens (cdr lat))))
                    (else (evens (cdr lat)))))))
      (apply + (evens (F '(1 1)))))))

(even-fib-sums-under 4000000)