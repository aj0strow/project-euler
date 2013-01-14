# Returns an array of all prime numbers up to maximum_value

def all_primes_up_to( maximum_value )
  primes = [2] # The first prime
  value = 3
  while ( value < maximum_value )
    primes << value if is_prime? primes, value
    value += 1
  end
  primes
end

# Check if a value is a prime number

def is_prime?( array_of_primes, value )
  for i in 0...array_of_primes.length
    if value % array_of_primes[i] == 0
      return false
    elsif array_of_primes[i] > Math.sqrt(value)
      return true
    end 
  end
end