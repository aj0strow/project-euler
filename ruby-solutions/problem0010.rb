=begin

  Problem 10:

  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.

=end

require_relative 'lib/primes'

def sum_of_primes_below(max)
  Primes.below(max).reduce(:+)
end

sum_of_primes_below(2_000_000)
# => 142913828922

# Benchmark
# 4.120000   0.020000   4.140000   (4.149938)