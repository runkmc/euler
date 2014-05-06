fib = [1, 1]
while fib.last < 4000000
  fib << fib[-1] + fib[-2]
end
puts fib[0...-1].keep_if{ |n| n.even? }.inject :+
