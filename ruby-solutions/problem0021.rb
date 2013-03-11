=begin

  Problem 21:

  Let d(n) be defined as the sum of proper divisors of n (numbers less than 
  n which divide evenly into n).
  
  If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and 
  each of a and b are called amicable numbers.

  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 
  and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 
  142; so d(284) = 220.

  Evaluate the sum of all the amicable numbers under 10,000.

=end

require_relative 'lib/numbers'

def divisors_sum(n)
  proper_divisors(n).reduce(0, &:+)
end

module AmicableNumbers
  
  @divisor_sum = {}
  
  class << self
    
    def include?(n)
      sum = @divisor_sum[n] ||= divisors_sum(n)
      @divisor_sum[sum] ||= divisors_sum(sum)
      pair?( n, sum )
    end
    
    def below(excluded_max)
      (2...excluded_max).select &method(:include?)
    end
    
    private
    
    def pair?(x, y)
      @divisor_sum[x] == y && @divisor_sum[y] == x && x != y
    end
    
  end
end

AmicableNumbers.below(10_000).reduce(:+)
# => 31626

# Benchmark
# 0.250000   0.000000   0.250000   (0.247387)
