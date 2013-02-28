=begin

  Problem 1:
  
  If we list all the natural numbers below 10 that are multiples of 3 or 5, 
  we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.

=end

def sum_of_multiples_below(value, factors = [3, 5])
  vals = factors.map { |n| (n...value).step(n).to_a }.flatten
  vals.uniq.reduce(:+)
end

sum_of_multiples_below(1000)
# => 233168

# Benchmark
# 0.000000   0.000000   0.000000   (0.000511)