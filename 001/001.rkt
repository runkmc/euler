#lang Racket

(define sums
  (lambda (m n)
    (letrec
        ((all-multiples (lambda (m n)
                      (cond
                        ((> m n) '())
                        ((or (zero? (modulo m 5)) (zero? (modulo m 3))) 
                         (cons m (all-multiples (add1 m) n)))
                        (else (all-multiples (add1 m) n))))))
      (apply + (all-multiples m n)))))

(sums 1 999)