=begin

  Problem 2:

  Each new term in the Fibonacci sequence is generated by adding the previous two 
  terms. By starting with 1 and 2, the first 10 terms will be:

  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do not exceed 
  four million, find the sum of the even-valued terms.

=end

class Fibonacci
  
  def initialize(stop)
    @smaller, @larger, @stop = 1, 2, stop
  end
  
  def self.up_to(stop)
    self.new(stop)
  end
  
  def each(&block)
    while @smaller < @stop
      yield(@smaller)
      @smaller, @larger = @larger, @smaller + @larger
    end
  end
  
end

def sum_of_even_fib_below(value)
  sum = 0
  Fibonacci.up_to(value).each do |num|
    sum += num if num.even?
  end
  sum
end

puts sum_of_even_fib_below(4_000_000)
# => 4613732

# Benchmark
# 0.000000   0.000000   0.000000   (0.000026)

