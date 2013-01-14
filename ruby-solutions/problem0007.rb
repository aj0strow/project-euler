=begin

  Problem 7:

  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 
  6th prime is 13.

  What is the 10 001st prime number?

=end

require_relative 'lib/primes'

def nth_prime_number(n)
  value, count = 2, 1
  while count < n
    value += 1
    count += 1 if Primes.include?(value)
  end
  value
end

nth_prime_number(10_001)
# => 104743

# Benchmark
# 0.760000   0.000000   0.760000   (0.755726)
