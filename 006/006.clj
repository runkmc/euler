(defn square [x] (* x x))

(- (square (reduce + (range 101))) (reduce + (map square (range 101))))
