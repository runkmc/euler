let numbers = (1...999).filter { i in 
  i % 3 == 0 || i % 5 == 0 
}.reduce(0, combine: +)
