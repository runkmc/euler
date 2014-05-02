puts (1...1000).to_a.keep_if{ |n| n % 3 == 0 or n % 5 == 0 }.inject :+
