=begin

  Problem 3:

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?

=end

class Primes
  
  LIKELY_ENDING = Hash.new(false).merge({
    '1' => true,
    '3' => true,
    '7' => true,
    '9' => true
  })
  
  class << self
  
    def include?(num)
      if num < 0
        include?(num * -1)
      elsif num < 4
        true
      elsif unlikely?(num)
        false
      else
        sqrt = Math.sqrt(num).to_i
        prime = (2..sqrt).each do |divisor|
          break false if num % divisor == 0
        end
        !!prime
      end      
    end
    
    def unlikely?(num)
      num > 9 && !LIKELY_ENDING[ num.to_s[-1] ]
    end
    
  end
  
end

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
# 0.090000   0.000000   0.090000 (  0.089953)

