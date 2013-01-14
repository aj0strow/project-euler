=begin
----------- Problem 9 ------------
 
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 a^2 + b^2 = c^2

 For example, 32 + 42 = 9 + 16 = 25 = 52.

 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.

=end

# Finds the product of the pythagorean triplet where the 
# numbers add to 1000

def pythagorean_triplet(value)
  for a in 1..(value/2).floor
    for b in 1..(value/2).floor
      # Pythagorean Theorem
      cSquare = a*a + b*b  
      c = Math.sqrt(cSquare).floor
      if Math.sqrt(cSquare) == 1.0 * c && a+b+c == value
        return a*b*c
      end
    end
  end
end

# answer to problem

puts pythagorean_triplet(1000)
