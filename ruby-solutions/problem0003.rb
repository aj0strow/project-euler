=begin

  Problem 3:

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?

=end

require_relative 'lib/primes'

def largest_prime_factor(value)
  divisor = Math.sqrt(value).to_i
  while divisor > 1
    return divisor if value % divisor == 0 && Primes.include?(divisor)
    divisor -= 1
  end
end

largest_prime_factor(600851475143)
# => 6857

# Benchmark
# 0.090000   0.000000   0.090000   (0.089953)

