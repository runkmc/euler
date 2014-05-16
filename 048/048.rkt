#lang racket

(for/sum ([i (in-range 1 1000)]) (expt i i))