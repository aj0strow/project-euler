=begin

  Problem 6:

  The sum of the squares of the first ten natural numbers is,

  1^2 + 2^2 + ... + 10^2 = 385
  
  The square of the sum of the first ten natural numbers is,

  (1 + 2 + ... + 10)^2 = 552 = 3025
  
  Hence the difference between the sum of the squares of the first ten natural numbers 
  and the square of the sum is 3025 - 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural 
  numbers and the square of the sum.

=end

def sums_and_squares_difference(values)
  sum_of_squares = values.reduce { |sum, val| sum + val ** 2 }
  square_of_sums = values.reduce(:+) ** 2
  (square_of_sums - sum_of_squares).abs
end

sums_and_squares_difference(1..100)
# => 25164150

# Benchmark
# 0.000000   0.000000   0.000000   (0.000071)

