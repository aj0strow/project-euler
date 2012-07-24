=begin
Problem 1:

If we list all the natural numbers below 10 that are multiples 
of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
23.

Find the sum of all the multiples of 3 or 5 below 1000.  
=end

class Integer
  def has_factor_in(factors)
    for factor in factors
      return true if self % factor == 0
    end
    false
  end
end

def multiples_below(maximum, factors)
  (2...maximum).select { |num|
    num.has_factor_in factors
  }
end

def sum_of_multiples_below(maximum, factors)
  multiples_below(maximum, factors).reduce :+
end

puts sum_of_multiples_below 1000, [3, 5]
# => 233168
