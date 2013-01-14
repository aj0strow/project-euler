=begin

  Problem 4:

  A palindromic number reads the same both ways. The largest palindrome made from 
  the product of two 2-digit numbers is 9009 = 91 x 99.

  Find the largest palindrome made from the product of two 3-digit numbers.

=end

def palindrome?(num)
  num.to_s.reverse == num.to_s
end


def largest_product_palindrome(digits)
  stop = 10 ** digits
  start = (stop * 0.8).to_i # assumes palindrome will be found in top 20% of values
  values = (start...stop).to_a.map do |i|  
    (start...stop).to_a.map { |j| i * j }
  end
  values.flatten!.sort { |x, y| y <=> x }.find { |num| palindrome?(num) }
end

largest_product_palindrome(3)
# => 906609

# Benchmark
# 0.190000   0.000000   0.190000   (0.190758)

