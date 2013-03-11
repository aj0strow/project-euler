=begin

  Problem 20:
  
  n! means n * (n * 1) * ... * 3 * 2 * 1

  For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
  and the sum of the digits in the number 10! is: 
  
  3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

  Find the sum of the digits in the number 100!

=end

require_relative 'lib/numbers'

def factorial_digit_sum(n)
  digits( factorial(n) ).reduce(:+)
end

factorial_digit_sum(100)
# => 648

# Benchmark
# 0.000000   0.000000   0.000000   (0.000243)
