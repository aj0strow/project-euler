=begin
----------- Problem 6 ------------
 
 The sum of the squares of the first ten natural numbers is,
 12 + 22 + ... + 102 = 385

 The square of the sum of the first ten natural numbers is,
 (1 + 2 + ... + 10)2 = 552 = 3025

 Hence the difference between the sum of the squares of the first ten 
 natural numbers and the square of the sum is 3025 − 385 = 2640.

 Find the difference between the sum of the squares of the first one 
 hundred natural numbers and the square of the sum.

=end

# Get the sum of the square of every number below $num

def sumOfSquares(num)
  total = 0
  for i in 1..num
    total += i * i
  end
  return total
end

# Get the square of the sum of every number below $num

def squareOfSums(num)
  total = 0
  for i in 1..num
    total += i
  end
  return total * total
end

# Find the difference between them

def difference(num)
  return squareOfSums(num) - sumOfSquares(num)
end

# answer to problem

puts difference(100)

# => 25164150
