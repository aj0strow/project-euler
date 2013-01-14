=begin
----------- Problem 5 ------------
 
 2520 is the smallest number that can be divided by each of the numbers from 
 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the 
 numbers from 1 to 20?

=end

# Returns an array of every prime numbers up to num 

require './lib/primes'

# Checks if every number up to $num is a factor of value

def factors?(value, num)
  for i in 2..num
    if(value % i != 0)
      return false
    end
  end
  return true
end

# check values until one of them is divisible by all the numbers

def divisibleByAll(num) 
  # the smallest possible increment is the product of
  # every prime number under num
  increment = all_primes_up_to(num).reduce(1, :*)
  value = increment
  while ( !factors?(value, num) )
    value += increment
  end
  return value
end

# answer to problem

puts divisibleByAll(20)

# => 232792560


