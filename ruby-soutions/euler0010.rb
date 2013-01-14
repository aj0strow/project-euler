=begin
----------- Problem 10 ------------
 
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

 Find the sum of all the primes below two million.

=end

# Same method from Problem 3
# Returns an array of every prime numbers up to num 

def arrayOfPrimes(num)
  primes = Array.new
  primes[0] = 2  # The first prime
  index = 1; value = 3
  while ( value < num )
    i=0; flag=true
    # Check if each previous prime is a factor of the current 
    # value (exits early on a match)
    while ( flag && i < index && primes[i] <= Math.sqrt(value) )
      if (value % primes[i] == 0)
        flag = false
      end
      i += 1
    end
    if(flag) # if it is a prime
      primes[index] = value
      index += 1
    end
    value += 1
  end
  return primes
end

# find the sum of an array of ints

def sum(array)
  sum = 0
  for val in array
    sum += val
  end
  return sum
end

# answer to problem

puts sum( arrayOfPrimes(2_000_000) )

