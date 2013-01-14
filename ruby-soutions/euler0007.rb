=begin
----------- Problem 7 ------------
 
 By listing the first six prime numbers: 2, 3, 5, 7, 11, 
 and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?

=end

# Same prime function from Problem 3
# Returns an array of every prime numbers up to num 

require './lib/primes'

def nth_prime(n)
  all_primes_up_to(n).last
end


# answer to problem

puts nth_prime(10_001)

# => 9973

