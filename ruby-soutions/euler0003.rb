=begin
----------- Problem 3 ------------
 
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600_851_475_143 ?
  
=end

require './lib/primes'

# Generate all prime numbers up to the number, then
# find the largest one that's a factor

def largest_prime_factor(num)
  largest_possible_factor = Math.sqrt(num).floor
  primes = all_primes_up_to largest_possible_factor
  # start with the largest prime
  for value in primes.reverse
    return value if num % value == 0 
  end
  1 # if none are factors
end

# answer to problem

puts largest_prime_factor(600_851_475_143)

# => 6857
