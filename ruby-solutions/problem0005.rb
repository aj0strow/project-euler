=begin

  Problem 5:

  2520 is the smallest number that can be divided by each of the numbers from 1
  to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the 
  numbers from 1 to 20?

=end

require_relative 'lib/primes'

def divisible_by_all?(num, values)
  values.all? { |v| num % v == 0 }
end

def smallest_divisible_by_all(values)
  unit = values.select{ |v| Primes.include?(v) }.reduce(:*)
  test = unit
  test += unit until divisible_by_all?(test, values)
  test
end

smallest_divisible_by_all(1..20)
# => 232792560

# Benchmark
# 0.000000   0.000000   0.000000   (0.000154)
