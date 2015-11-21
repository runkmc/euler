(def fibs
  ((fn fibs-list [x y]
     (lazy-seq (cons x (fibs-list y (+ x y))))) 1 1))

(apply + (filter even? (take-while (fn [x] (<= x 4000000) fibs-list))))
