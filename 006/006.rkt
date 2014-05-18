#lang racket

(- (expt (foldl + 0 (build-list 101 values)) 2) 
   (foldl + 0 (build-list 101 (lambda (n) (expt n 2)))))