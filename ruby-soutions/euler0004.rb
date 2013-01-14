=begin
----------- Problem 4 ------------
 
 A palindromic number reads the same both ways. The largest palindrome made from the 
 product of two 2-digit numbers is 9009 = 91 × 99.

 Find the largest palindrome made from the product of two 3-digit numbers.

=end

# Helper function checks if its a palindrome

def palindrome?(num)
  str = num.to_s
  str == str.reverse
end

# Sorted array of all unique products of n-digit numbers. To save time, a top pct of values 
# will probably yield a palindrome product

def unique_products_descending(digits, percentage)
  largest_value = 10**digits-1
  values = []
  n_digit_numbers_range = ( largest_value * percentage ).floor .. largest_value
  for i in n_digit_numbers_range
    for j in n_digit_numbers_range
      values.push i * j
    end
  end
  # sort the unique values descending to get biggest one
  values.uniq.sort {|x,y| y <=> x}
end

# Find the largest palindrome thats a product of two
# n-digit numbers. 

def largest_product_palindrome(digits, pct_cutoff)
  for val in unique_products_descending(digits, pct_cutoff)
    return val if palindrome?(val)
  end
  # If it fails (unlikely), lower the cutoff and try again
  largest_product_palindrome(digits, pct_cutoff - 0.25)
end

# answer to problem

puts largest_product_palindrome(3, 0.75)

# => 906609
