#lang racket

(for/sum ([i (in-range 1000)] #:when (or (zero? (modulo i 3)) (zero? (modulo i 5)))) i)