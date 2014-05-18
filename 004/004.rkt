#lang racket

(define big-list
  (for*/list ([i (in-range 100 999)] [j (in-range 100 999)]) (* i j)))

(define integer-to-list
  (lambda (n)
    (cond
      ((> 10 n) (cons n '()))
      (else (cons (remainder n 10) (integer-to-list (quotient n 10)))))))

(define largest-palindrome
  (lambda (tup)
      (cond
        ((empty? tup) '())
        ((equal? (integer-to-list (car tup)) (reverse (integer-to-list (car tup))))
         (cons (car tup) (largest-palindrome (cdr tup))))
         (else (largest-palindrome (cdr tup))))))

(car (sort (largest-palindrome big-list) >))