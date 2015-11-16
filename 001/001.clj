(reduce + (filter #(or (= 0 (mod % 3)) (= 0 (mod % 5))) (range 3 1000)))
