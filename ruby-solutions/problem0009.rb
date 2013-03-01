=begin

  Problem 9:

  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a^2 + b^2 = c^2
  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.

=end

def triplet?(a, b, c)
  a*a + b*b == c*c
end

def find_triplet_for(sum)
  max = sum / 3
  a, b, c = 1, 2, 3
  while a < max
    while b < c
      c = sum - a - b
      return a * b * c if triplet?(a, b, c)
      b = b.next
    end
    a, b = a.next, a + 2
  end
end

find_triplet_for(1000)
# => 31875000

# Benchmark
# 0.040000   0.000000   0.040000   (0.030766)
