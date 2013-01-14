=begin
----------- Problem 16 ------------
 
215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

=end

def strSum(arr)
  total = 0
  for val in arr
    total += val.to_i
  end
  return total
end

puts strSum( (2**1_000).to_s.split('') )
