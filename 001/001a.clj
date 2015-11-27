(apply + (for [x (range 3 1000) :when (or (= 0 (mod x 3)) (= 0 (mod x 5)))] x))
